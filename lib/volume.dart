import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  const Volume({super.key});

  @override
  State<Volume> createState() => VolumeState();
}

class VolumeState extends State<Volume> {
  double _area = 3.14*3.14 ;
  int _length = 0;
  double _area2 = 0;

  TextEditingController _areaCtrl = TextEditingController();
  TextEditingController _lengthCtrl = TextEditingController();

  void _CalReg() {
    _area = double.tryParse(_areaCtrl.text) ?? 0;
    _length = int.tryParse(_lengthCtrl.text) ?? 0;

    setState(() {
      _area2 = _area * _length ;
    });
  }

  final InputDecoration _textFieldStyle = InputDecoration(
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("พื้นที่สีเหลี่ยม"), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "กว้าง $_area ม .ยาว $_length ม.พื้นที่คือ $_area2 ตร.ม",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(height: 30),
          TextField(
            controller: _areaCtrl,
            keyboardType: TextInputType.number,
            decoration: _textFieldStyle.copyWith(
              label: Text("คำนวณความกว้าง"),
              hint: Text("กรอกความกว้าง"),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _lengthCtrl,
            keyboardType: TextInputType.number,
            decoration: _textFieldStyle.copyWith(
              label: Text("คำนวณความกว้าง"),
              hint: Text("กรอกความกว้าง"),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () => {_CalReg()}, child: Text("คำนวณ")),
        ],
      ),
    );
  }
}
