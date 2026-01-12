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
      _area = _width * _length;
    });
  }

  final InputDecoration _textFieldStyle = InputDecoration(
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("คำนวณพื้นที่สี่เหลี่ยม"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "พื้นที่ = $_area ตร.ม",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                TextField(
                  controller: _widthCtrl,
                  keyboardType: TextInputType.number,
                  decoration: _textFieldStyle.copyWith(
                    labelText: "ความกว้าง (ม.)",
                  ),
                ),
                const SizedBox(height: 16),

                TextField(
                  controller: _lengthCtrl,
                  keyboardType: TextInputType.number,
                  decoration: _textFieldStyle.copyWith(
                    labelText: "ความยาว (ม.)",
                  ),
                ),
                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _CalReg,
                    child: const Text("คำนวณ"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
