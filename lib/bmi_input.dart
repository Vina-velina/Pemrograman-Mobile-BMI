import 'package:bmi_project/select_figure.dart';
import 'package:flutter/material.dart';
import 'all_result.dart';

class BmiInput extends StatefulWidget {
  @override
  _BmiInputState createState() => _BmiInputState();
}

class _BmiInputState extends State<BmiInput> {
  double tinggi;
  double berat;
  int tanggal;
  int bulan;
  int tahun;
  String nama;
  String _valGender;
  List _listGender = ["Perempuan", "Laki-Laki"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('INPUT BMI'),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              // color: Colors.blue[700],
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.redAccent,
                              primaryColorDark: Colors.redAccent),
                          child: new TextField(
                            onChanged: (txt) {
                              setState(() {
                                nama = txt.toUpperCase();
                              });
                            },
                            keyboardType: TextInputType.text,
                            maxLength: 12,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.redAccent)),
                                hintText: 'Masukkan Nama',
                                labelText: 'Nama Anda',
                                prefixIcon: const Icon(
                                  Icons.border_color,
                                  color: Colors.redAccent,
                                ),
                                prefixText: ' ',
                                suffixStyle:
                                    const TextStyle(color: Colors.redAccent)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.redAccent,
                              primaryColorDark: Colors.redAccent),
                          child: new DropdownButtonFormField(
                            items: _listGender.map((value) {
                              return DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _valGender = value;
                              });
                            },
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.redAccent)),
                                hintText: 'Masukkan Jenis Kelamin',
                                helperText: '',
                                labelText: 'Jenis Kelamin',
                                prefixIcon: const Icon(
                                  Icons.wc,
                                  color: Colors.redAccent,
                                ),
                                suffixStyle:
                                    const TextStyle(color: Colors.redAccent)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.redAccent,
                              primaryColorDark: Colors.redAccent),
                          child: new TextField(
                            onChanged: (txt) {
                              setState(() {
                                tanggal = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 2,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.redAccent)),
                                hintText: '01 - 31',
                                labelText: 'Tanggal',
                                prefixIcon: const Icon(
                                  Icons.date_range,
                                  color: Colors.redAccent,
                                ),
                                suffixStyle:
                                    const TextStyle(color: Colors.redAccent)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.redAccent,
                              primaryColorDark: Colors.redAccent),
                          child: new TextField(
                            onChanged: (txt) {
                              setState(() {
                                bulan = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 2,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.redAccent)),
                                hintText: '01-12',
                                labelText: 'Bulan',
                                prefixIcon: const Icon(
                                  Icons.date_range,
                                  color: Colors.redAccent,
                                ),
                                suffixStyle:
                                    const TextStyle(color: Colors.redAccent)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.redAccent,
                              primaryColorDark: Colors.redAccent),
                          child: new TextField(
                            onChanged: (txt) {
                              setState(() {
                                tahun = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.redAccent)),
                                hintText: '',
                                labelText: 'Tahun',
                                prefixIcon: const Icon(
                                  Icons.date_range,
                                  color: Colors.redAccent,
                                ),
                                suffixStyle:
                                    const TextStyle(color: Colors.redAccent)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.redAccent,
                              primaryColorDark: Colors.redAccent),
                          child: new TextField(
                            onChanged: (txt) {
                              setState(() {
                                tinggi = double.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 3,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.redAccent)),
                                hintText: 'Isi Tinggimu',
                                labelText: 'Tinggi',
                                prefixIcon: const Icon(
                                  Icons.border_color,
                                  color: Colors.redAccent,
                                ),
                                prefixText: ' ',
                                suffixText: 'Cm',
                                suffixStyle:
                                    const TextStyle(color: Colors.redAccent)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.redAccent,
                              primaryColorDark: Colors.redAccent),
                          child: new TextField(
                            onChanged: (txt) {
                              setState(() {
                                berat = double.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 3,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.redAccent)),
                                hintText: 'Isi Beratmu',
                                labelText: 'Berat',
                                prefixIcon: const Icon(
                                  Icons.border_color,
                                  color: Colors.redAccent,
                                ),
                                prefixText: ' ',
                                suffixText: 'Kg',
                                suffixStyle:
                                    const TextStyle(color: Colors.redAccent)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    side: BorderSide(color: Colors.teal)),
                color: Colors.teal,
                textColor: Colors.teal,
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  if (_valGender != '' &&
                      nama != null &&
                      tahun != null &&
                      bulan != null &&
                      tanggal != null &&
                      tinggi != null &&
                      berat != null) {
                    if ((tanggal > 0 && tanggal <= 31) &&
                        (bulan > 0 && bulan <= 12) &&
                        (tahun > 1900)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CountResult(
                                  tinggiBadan: tinggi,
                                  beratBadan: berat,
                                  namaUser: nama,
                                  jenisKelamin: _valGender,
                                  tanggal: tanggal,
                                  bulan: bulan,
                                  tahun: tahun,
                                )),
                      );
                    } else {
                      return ErrorDescription("Perhatikan Tanggal Lahir Anda");
                    }
                  } else {
                    return ErrorDescription("Mohon diisi semua");
                  }
                },
                child: Text(
                  "Hitung BMI",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
