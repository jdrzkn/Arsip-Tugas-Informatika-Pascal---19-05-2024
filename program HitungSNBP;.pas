program HitungSNBP;

uses crt;

var
  Nama: string;
  NISN: string;
  NS1, NS2, NS3, NS4, NS5: Real;
  TambahanSertifikat: Real;
  RataRata: Real;
  Sertifikat: string;
  JenisSertifikat: integer;

begin
  clrscr;
  
  writeln('Masukkan Nama Peserta Didik:');
  readln(Nama);
  writeln('Masukkan NISN:');
  readln(NISN);

  writeln('Masukkan Nilai Semester 1:');
  readln(NS1);
  writeln('Masukkan Nilai Semester 2:');
  readln(NS2);
  writeln('Masukkan Nilai Semester 3:');
  readln(NS3);
  writeln('Masukkan Nilai Semester 4:');
  readln(NS4);
  writeln('Masukkan Nilai Semester 5:');
  readln(NS5);

  writeln('Apakah memiliki sertifikat prestasi? (Y/N)');
  readln(Sertifikat);

  TambahanSertifikat := 0.0;
  if (Sertifikat = 'Y') or (Sertifikat = 'y') then
  begin
    writeln('Masukkan Jenis Sertifikat Prestasi:');
    writeln('1. Internasional');
    writeln('2. Nasional Juara 1');
    writeln('3. Nasional Juara 2');
    writeln('4. Nasional Juara 3');
    writeln('5. Provinsi Juara 1');
    writeln('6. Provinsi Juara 2');
    writeln('7. Provinsi Juara 3');
    writeln('8. Kabupaten/Kota Juara 1');
    writeln('9. Kabupaten/Kota Juara 2');
    writeln('10. Kabupaten/Kota Juara 3');
    readln(JenisSertifikat);

    case JenisSertifikat of
      1: TambahanSertifikat := 6.0;
      2: TambahanSertifikat := 5.5;
      3: TambahanSertifikat := 5.0;
      4: TambahanSertifikat := 4.5;
      5: TambahanSertifikat := 4.0;
      6: TambahanSertifikat := 3.5;
      7: TambahanSertifikat := 3.0;
      8: TambahanSertifikat := 2.5;
      9: TambahanSertifikat := 2.0;
      10: TambahanSertifikat := 1.5;
    else
      TambahanSertifikat := 0.0;
    end;
  end;

  RataRata := (NS1 + NS2 + NS3 + NS4 + NS5 + TambahanSertifikat) / 5;

  writeln('Nama: ', Nama);
  writeln('NISN: ', NISN);
  writeln('Rata-rata Nilai: ', RataRata:4:2);
  if RataRata >= 89 then
    writeln('Masuk Daftar Penerima SNBP')
  else
    writeln('Tidak Masuk Daftar Penerima SNBP')
  readln;
end.
