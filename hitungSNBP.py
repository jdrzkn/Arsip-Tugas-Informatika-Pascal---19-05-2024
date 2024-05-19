def hitung_snbp(nama, nisn, ns1, ns2, ns3, ns4, ns5, certificate_type):
    tambahan_sertifikat = certificate_type
    rata_rata = (ns1 + ns2 + ns3 + ns4 + ns5 + tambahan_sertifikat) / 5
    kelulusan = 'Masuk Daftar Penerima SNBP' jika rata_rata >= 89 else 'Tidak Masuk Daftar Penerima SNBP'
    
    return {
        'nama': nama,
        'nisn': nisn,
        'rata_rata': f"{rata_rata:.2f}",
        'kelulusan': kelulusan
    }
