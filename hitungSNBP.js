document.getElementById('hasCertificate').addEventListener('change', function() {
    const certificateSection = document.getElementById('certificateSection');
    certificateSection.style.display = this.checked ? 'block' : 'none';
});

function hitungSNBP() {
    const nama = document.getElementById('nama').value;
    const nisn = document.getElementById('nisn').value;
    const NS1 = parseFloat(document.getElementById('NS1').value);
    const NS2 = parseFloat(document.getElementById('NS2').value);
    const NS3 = parseFloat(document.getElementById('NS3').value);
    const NS4 = parseFloat(document.getElementById('NS4').value);
    const NS5 = parseFloat(document.getElementById('NS5').value);

    if (isNaN(NS1) || isNaN(NS2) || isNaN(NS3) || isNaN(NS4) || isNaN(NS5)) {
        alert("Harap masukkan semua nilai semester dengan benar.");
        return;
    }

    let TambahanSertifikat = 0;
    if (document.getElementById('hasCertificate').checked) {
        TambahanSertifikat = parseFloat(document.getElementById('certificateType').value);
    }

    const RataRata = (NS1 + NS2 + NS3 + NS4 + NS5 + TambahanSertifikat) / 5;

    // Menentukan kelulusan
    const resultElement = document.getElementById('result');
    resultElement.innerHTML = `Nama: ${nama}<br>NISN: ${nisn}<br>Rata-rata Nilai: ${RataRata.toFixed(2)}`;
    if (RataRata >= 89) {
        resultElement.innerHTML += '<br>Masuk Daftar Penerima SNBP';
    } else {
        resultElement.innerHTML += '<br>Tidak Masuk Daftar Penerima SNBP';
    }

    document.getElementById('resultModal').style.display = 'flex';
}

function closeModal() {
    document.getElementById('resultModal').style.display = 'none';
}
