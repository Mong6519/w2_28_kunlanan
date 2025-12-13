import 'package:flutter/material.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({super.key});

  @override
  State<Rectangle> createState() => RectangleState();
}

class RectangleState extends State<Rectangle> {
  int _width = 0;
  int _length = 0;
  int _area = 0;

  TextEditingController _widthCtrl = TextEditingController();
  TextEditingController _lengthCtrl = TextEditingController();

  void _CalReg() {
    _width = int.tryParse(_widthCtrl.text) ?? 0;
    _length = int.tryParse(_lengthCtrl.text) ?? 0;

    setState(() {
      _area = _width * _length ;
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
            "กว้าง $_width ม .ยาว $_length ม.พื้นที่คือ $_area ตร.ม",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(height: 30),
          TextField(
            controller: _widthCtrl,
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
