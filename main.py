from datetime import datetime, timezone
from flask import Flask, Response, jsonify, request
from flask_sqlalchemy import SQLAlchemy
import json
import paho.mqtt.client as mqtt

# Nome da aplicação
app = Flask('registro')

# Configuração do banco de dados
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:adm123@127.0.0.1/bd_medidor'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Criação da instância do banco
mybd = SQLAlchemy(app)

# Função para converter o modelo para JSON
class Registro(mybd.Model):
    __tablename__ = 'tb_registro'
    id = mybd.Column(mybd.Integer, primary_key=True, autoincrement=True)
    temperatura = mybd.Column(mybd.Numeric(10, 2))
    pressao = mybd.Column(mybd.Numeric(10,2))
    altitude = mybd.Column(mybd.Numeric(10,2))
    umidade = mybd.Column(mybd.Numeric(10,2))
    co2 = mybd.Column(mybd.Numeric(10,2))
    poeira = mybd.Column(mybd.Numeric(10,2))
    tempo_registro = mybd.Column(mybd.DateTime)

    def to_json(self):
        return {
            'id': self.id,
            'temperatura': float(self.temperatura),
            'pressao': float(self.pressao),
            'altitude': float(self.altitude),
            'umidade': float(self.umidade),
            'co2': float(self.co2),
            'poeira': float(self.poeira),
            'tempo_registro': self.tempo_registro.strftime('%Y-%m-%d %H:%M:%S') if self.tempo_registro else None
        }

# Rota para obter todos os registros
@app.route("/registro", methods=["GET"])
def seleciona_registro():
    registro_objetos = Registro.query.all()
    registro_json = [registro.to_json() for registro in registro_objetos]
    return jsonify(registro_json)

# Rota para obter um registro por ID
@app.route("/registro/<id>", methods=["GET"])
def seleciona_registro_id(id):
    registro_objetos = Registro.query.filter_by(id=id).first()
    if registro_objetos:
        return jsonify(registro_objetos.to_json())
    else:
        return jsonify({'error': 'Registro não encontrado'}), 404

# Rota para deletar um registro por ID
@app.route("/registro/<id>", methods=["DELETE"])
def deletar_registro(id):
    registro_objetos = Registro.query.filter_by(id=id).first()
    if registro_objetos:
        mybd.session.delete(registro_objetos)
        mybd.session.commit()
        return jsonify({'message': 'Registro deletado com sucesso!'})
    else:
        return jsonify({'error': 'Registro não encontrado'}), 404

# Rota para receber dados via POST (Simulação de sensores)
@app.route("/dados", methods=["POST"])
def cadastrar_dados():
    dados = request.get_json()
    if not dados:
        return jsonify({'error': 'Nenhum dado fornecido'}), 400
    try:
        temperatura = dados.get('temperatura')
        pressao = dados.get('pressao')
        altitude = dados.get('altitude')
        umidade = dados.get('umidade')
        co2 = dados.get('co2')
        poeira = dados.get('poeira')
        tempo_registro = datetime.fromtimestamp(dados['tempo_registro'], tz=timezone.utc)

        novo_registro = Registro(
            temperatura=temperatura,
            pressao=pressao,
            altitude=altitude,
            umidade=umidade,
            co2=co2,
            poeira=poeira,
            tempo_registro=tempo_registro
        )

        mybd.session.add(novo_registro)
        mybd.session.commit()
        return jsonify(novo_registro.to_json()), 201
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
