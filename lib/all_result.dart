import 'dart:math';
import 'package:flutter/material.dart';
import 'select_figure.dart';
import 'package:age/age.dart';

class CountResult extends StatelessWidget {
  CountResult({
    @required this.tinggiBadan,
    @required this.beratBadan,
    @required this.namaUser,
    @required this.jenisKelamin,
    @required this.tanggal,
    @required this.bulan,
    @required this.tahun,
  });
  final double tinggiBadan;
  final double beratBadan;
  final String namaUser;
  final String jenisKelamin;
  final int tanggal;
  final int bulan;
  final int tahun;

  @override
  Widget build(BuildContext context) {
    double bmi = beratBadan / pow(tinggiBadan / 100, 2);
    DateTime birthday = DateTime(tahun, bulan, tanggal);
    DateTime today = DateTime.now();
    AgeDuration umur;
    umur = Age.dateDifference(
        fromDate: birthday, toDate: today, includeToDate: false);
    String umurTahun = umur.years.toString();
    String umurBulan = umur.months.toString();
    String cBMI;
    String normal;
    String user = namaUser.toLowerCase();
    String jk = jenisKelamin.toLowerCase();
    String rekomendasi;
    if (jenisKelamin == "Perempuan") {
      normal = "18,0 - 25,0";
      if (bmi > 27) {
        cBMI = "Obesitas";
      } else if (bmi > 25 && bmi <= 27) {
        cBMI = "Kegemukan";
      } else if (bmi >= 18 && bmi <= 25) {
        cBMI = "Normal";
      } else if (bmi < 18) {
        cBMI = "Kurus";
      } else {
        cBMI = "Tak Terdefinisi";
      }
    } else if (jenisKelamin == "Laki-Laki") {
      normal = "17,0 - 23,0";
      if (bmi > 27) {
        cBMI = "Gendut";
      } else if (bmi > 23 && bmi <= 27) {
        cBMI = "Kegemukan";
      } else if (bmi >= 17 && bmi <= 23) {
        cBMI = "Normal";
      } else if (bmi < 17) {
        cBMI = "Kurus";
      } else {
        cBMI = "Tak Terdefinisi";
      }
    }

    if (umur.years < 17) {
      rekomendasi =
          "mulai pola hidup sehat, rajin berolahraga, dan makan-makanan yang mengandung banyak serat";
    } else if (umur.years >= 17 && umur.years <= 30) {
      rekomendasi =
          "tetap rajin berolaraga, kurangi rutinitas yang tidak perlu, dan makan makanan yang bergizi";
    } else if (umur.years > 30 && umur.years <= 45) {
      rekomendasi =
          "aktiflah bergerak, makan makanan yang mengandung kalsium, kurangi stres, dan makanan tetap dijaga";
    } else {
      rekomendasi =
          "kurangi kegiatan yang tidak perlu, perbanyak bergerak, dan makan makanan yang mengandung kalsium";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ONLINE CALCULATOR'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.redAccent, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectFigure()),
            );
          },
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cBMI.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.redAccent,
              ),
            ),
            Text(
              "Rentang Normal",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.redAccent,
              ),
            ),
            Text(
              normal.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.redAccent,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  "Hai $user, sebagai seorang $jk yang berusia $umurTahun tahun $umurBulan bulan , kamu memiliki nilai Body Mass Index (BMI) dalam rentangan $cBMI. Rekomendasi kami, $rekomendasi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.teal)),
                  color: Colors.teal,
                  textColor: Colors.red,
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 60, right: 60),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SelectFigure()),
                    );
                  },
                  child: Text(
                    "Hitung Lagi",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
