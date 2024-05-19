from flask import Flask, render_template, request, jsonify
from hitungSNBP import hitung_snbp

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/calculate', methods=['POST'])
def calculate():
    data = request.json
    nama = data['nama']
    nisn = data['nisn']
    ns1 = float(data['ns1'])
    ns2 = float(data['ns2'])
    ns3 = float(data['ns3'])
    ns4 = float(data['ns4'])
    ns5 = float(data['ns5'])
    certificate_type = float(data['certificate_type'])
    result = hitung_snbp(nama, nisn, ns1, ns2, ns3, ns4, ns5, certificate_type)
    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)
