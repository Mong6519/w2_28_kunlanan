import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  const Volume({super.key});

  @override
  State<Volume> createState() => VolumeState();
}

class VolumeState extends State<Volume> {
  double _radius = 0;
  double _height = 0;
  double _volume = 0;

  final TextEditingController _radiusCtrl = TextEditingController();
  final TextEditingController _heightCtrl = TextEditingController();

  void _calVolume() {
    setState(() {
      _radius = double.tryParse(_radiusCtrl.text) ?? 0;
      _height = double.tryParse(_heightCtrl.text) ?? 0;
      _volume = 3.14 * _radius * _radius * _height;
    });
  }

  final InputDecoration _textFieldStyle = const InputDecoration(
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ปริมาตรทรงกระบอก"),
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
                  "ปริมาตร = $_volume ลบ.ม.",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                TextField(
                  controller: _radiusCtrl,
                  keyboardType: TextInputType.number,
                  decoration: _textFieldStyle.copyWith(
                    labelText: "รัศมี (ม.)",
                  ),
                ),
                const SizedBox(height: 16),

                TextField(
                  controller: _heightCtrl,
                  keyboardType: TextInputType.number,
                  decoration: _textFieldStyle.copyWith(
                    labelText: "ความสูง (ม.)",
                  ),
                ),
                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _calVolume,
                    child: const Text("คำนวณปริมาตร"),
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
