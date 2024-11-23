import numpy as np
import streamlit as st
import pandas as pd
import plotly.express as px
from query import *
import smtplib

#python -m streamlit run dash.py

# Consulta no banco de dados
query = "SELECT * FROM tb_registro"

# Carregar os dados do MySQL
df = conexao(query)

# Botão para atualização dos dados
if st.button("Atualizar dados"):
    df = conexao(query)

# Menu lateral
st.sidebar.header("Selecione a informação para gerar o gráfico")

# Seleção de colunas X e Y
colunaX = st.sidebar.selectbox("Eixo X", options=["umidade", "temperatura", "pressao", "altitude", "co2", "poeira"], index=0)
colunaY = st.sidebar.selectbox("Eixo Y", options=["umidade", "temperatura", "pressao", "altitude", "co2", "poeira"], index=1)

# Função para verificar se um atributo está nos eixos selecionados
def filtros(atributo):
    return atributo in [colunaX, colunaY]

# Filtro de range (slider) para atributos
st.sidebar.header("Selecione o filtro")
atributos = ["temperatura", "umidade", "altitude", "pressao", "co2", "poeira"]
filtros_range = {}

for atributo in atributos:
    if filtros(atributo):
        filtros_range[atributo] = st.sidebar.slider(
            f"{atributo.capitalize()}",
            min_value=float(df[atributo].min()),
            max_value=float(df[atributo].max()),
            value=(float(df[atributo].min()), float(df[atributo].max())),
            step=0.1
        )

# Aplicação dos filtros
df_selecionado = df.copy()
for atributo, (min_val, max_val) in filtros_range.items():
    df_selecionado = df_selecionado[
        (df_selecionado[atributo] >= min_val) & (df_selecionado[atributo] <= max_val)
    ]

# Função para calcular o Índice de Qualidade do Ar (AQI)
def calcular_aqi(df):
    def classificar_aqi(temp, umid, pressao):
        if pd.isna(temp) or pd.isna(umid) or pd.isna(pressao):
            return "Desconhecido", "#808080"

        if pressao >= 1000 and pressao <= 1020:
            pressao_status = "Boa"
            pressao_cor = "#FFFFFF"
        elif pressao >= 980 and pressao < 1000 or pressao > 1020 and pressao <= 1040:
            pressao_status = "Moderada"
            pressao_cor = "#ffff00"
        else:
            pressao_status = "Ruim"
            pressao_cor = "#ff0000"

        if 15 <= temp <= 25 and 30 <= umid <= 60:
            aqi_status = "Bom"
            aqi_cor = "#FFFFFF"
        elif (15 <= temp <= 30) and (20 <= umid <= 70):
            aqi_status = "Moderado"
            aqi_cor = "#ffff00"
        elif temp < 15 or temp > 30 or umid < 20 or umid > 70:
            aqi_status = "Ruim"
            aqi_cor = "#ffa500"
        else:
            aqi_status = "Perigoso"
            aqi_cor = "#ff0000"

        if pressao_status == "Ruim" or aqi_status == "Perigoso":
            return "Perigoso", "#ff0000"
        elif pressao_status == "Moderada" or aqi_status == "Ruim":
            return "Ruim", "#ffa500"
        elif aqi_status == "Moderado" or pressao_status == "Moderada":
            return "Moderado", "#ffff00"
        else:
            return "Bom", "#FFFFFF"

    df['AQI'], df['AQI_cor'] = zip(*df.apply(lambda row: classificar_aqi(row['temperatura'], row['umidade'], row['pressao']), axis=1))
    return df

# Atualizar o DataFrame com o AQI
df_selecionado = calcular_aqi(df_selecionado)

# Função para exibir o Índice de Qualidade do Ar (IQA)
def exibir_aqi():
    st.sidebar.header("Índice de Qualidade do Ar (IQA)")
    if not df_selecionado.empty:
        if df_selecionado['AQI'].iloc[-1] != "Desconhecido":
            aqi_status, aqi_cor = df_selecionado.iloc[-1][['AQI', 'AQI_cor']]
            st.sidebar.markdown(f"<h2 style='color:{aqi_cor}'>AQI: {aqi_status}</h2>", unsafe_allow_html=True)
        else:
            st.sidebar.write("AQI não disponível devido a dados insuficientes.")
    else:
        st.sidebar.write("Nenhum dado disponível para calcular o AQI")

# Função para exibir informações
def Home():
    with st.expander("Tabela"):
        mostrarDados = st.multiselect("Filtros:", df_selecionado.columns, default=[], key="showData_home")
        if mostrarDados:
            st.write(df_selecionado[mostrarDados])

    if not df_selecionado.empty:
        media_umidade = df_selecionado['umidade'].mean()
        media_temperatura = df_selecionado['temperatura'].mean()
        media_co2 = df_selecionado['co2'].mean()

        media1, media2, media3 = st.columns(3, gap='large')
        with media1:
            st.info('Média de Registros de Umidade')
            st.metric(label='Média', value=f'{media_umidade:.2f}')
        with media2:
            st.info('Média de Registros de Temperatura')
            st.metric(label='Média', value=f'{media_temperatura:.2f}')
        with media3:
            st.info('Média de Registros de CO2')
            st.metric(label='Média', value=f'{media_co2:.2f}')
        st.markdown("""-------------------""")

    # Botão para exportar dados
    if not df_selecionado.empty:
        col1, col2 = st.columns(2)
        with col1:
            st.download_button(
                label="Baixar dados filtrados como CSV",
                data=df_selecionado.to_csv(index=False).encode('utf-8'),
                file_name='dados_filtrados.csv',
                mime='text/csv'
            )

        # Botão para exportar relatório estatístico
        with col2:
            if not df_selecionado.empty:
                descricao_estatisticas = df_selecionado.describe().transpose()
                st.download_button(
                    label="Baixar Relatório Estatístico",
                    data=descricao_estatisticas.to_csv().encode('utf-8'),
                    file_name='relatorio_estatistico.csv',
                    mime='text/csv'
                )

# Função para exibir gráficos
def graficos():
    st.title('Dashboard de Monitoramento')
    
    aba1, aba2, aba3, aba4, aba5 = st.tabs(['Gráfico de Barras', 'Gráfico de Dispersão', 'Gráfico de Linha','Gráfico de Boxplot', 'Gráfico de Histograma'])

    # Gráfico de Barras
    with aba1:
        if df_selecionado.empty:
            st.write('Nenhum dado está disponível para gerar o gráfico')
        else:
            try:
                grupo_dados = df_selecionado.groupby(by=[colunaX]).size().reset_index(name="contagem")

                fig_barras = px.bar(
                    grupo_dados,
                    x=colunaX,
                    y="contagem",
                    title=f"Contagem de Registros por {colunaX.capitalize()}",
                    color_discrete_sequence=["#228B22"],
                    template="plotly_white"
                )
                st.plotly_chart(fig_barras, use_container_width=True)
            except Exception as e:
                st.error(f"Erro ao criar o gráfico de barras: {e}")

    # Gráfico de Dispersão
    with aba2:
        if df_selecionado.empty:
            st.write('Nenhum dado está disponível para gerar o gráfico de dispersão')
        elif colunaX == colunaY:
            st.warning('Selecione uma opção diferente para os eixos X e Y')
        else:
            try:
                fig_disp = px.scatter(
                    df_selecionado,
                    x=colunaX,
                    y=colunaY,
                    title=f"Gráfico de Dispersão: {colunaX.capitalize()} vs {colunaY.capitalize()}",
                    color_discrete_sequence=["#AF0000"],
                    template="plotly_white"
                )
                st.plotly_chart(fig_disp, use_container_width=True)
            except Exception as e:
                st.error(f"Erro ao criar o gráfico de dispersão: {e}")

    # Gráfico de Linha
    with aba3:
        if df_selecionado.empty:
            st.write('Nenhum dado está disponível para gerar o gráfico de linha')
        else:
            try:
                fig_linha = px.line(
                    df_selecionado,
                    x=colunaX,
                    y=colunaY,
                    title=f"Gráfico de Linha: {colunaX.capitalize()} vs {colunaY.capitalize()}",
                    line_shape="linear",
                    template="plotly_white",
                    color_discrete_sequence=["#228B22"]
                )
                st.plotly_chart(fig_linha, use_container_width=True)
            except Exception as e:
                st.error(f"Erro ao criar o gráfico de linha: {e}")

    # Gráfico de Boxplot
    with aba4:
        if df_selecionado.empty:
            st.write('Nenhum dado está disponível para gerar o gráfico de boxplot')
        else:
            try:
                fig_box = px.box(
                    df_selecionado,
                    x=colunaX,
                    y=colunaY,
                    title=f"Gráfico de Boxplot: {colunaX.capitalize()} vs {colunaY.capitalize()}",
                    color_discrete_sequence=["#AF0000"],
                    template="plotly_white"
                )
                st.plotly_chart(fig_box, use_container_width=True)
            except Exception as e:
                st.error(f"Erro ao criar o gráfico de boxplot: {e}")

    # Gráfico de Histograma
    with aba5:
        if df_selecionado.empty:
            st.write('Nenhum dado está disponível para gerar o gráfico de histograma')
        else:
            try:
                fig_hist = px.histogram(
                    df_selecionado,
                    x=colunaX,
                    title=f"Histograma de {colunaX.capitalize()}",
                    color_discrete_sequence=["#228B22"],
                    template="plotly_white"
                )
                st.plotly_chart(fig_hist, use_container_width=True)
            except Exception as e:
                st.error(f"Erro ao criar o gráfico de histograma: {e}")

# Função de início
def mainPy():
    exibir_aqi()
    Home()
    graficos()

if __name__ == '__main__':
    mainPy()
