import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required this.title});
  final String title;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}


class _MyWidgetState extends State<MyWidget> {
  var radioValue = '';
  bool switchOn = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_printLatestValue);
    controller.addListener(_printLatestValue2);
    controller.addListener(_printLatestValue3);
  }
  void _printLatestValue() {
    print('Resi: ${_controller.text}');
  }
  void _printLatestValue2() {
    print('Nama : ${controller.text}');
  }
  void _printLatestValue3() {
    print('Nama : ${controller.text}');
  }
  int _counter = 0;
  void _incrementCounter() {
  _counter++;
  print(_counter);
  }


  final TextEditingController _controller = TextEditingController();
  String? Resi = 'Jakarta';
  final TextEditingController controller = TextEditingController();
  String? name = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Nazel Ekspedisi App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
       const SizedBox(height: 5,
                      width: 10,),
       TextFormField(
              decoration: InputDecoration(
                hintText: "Masukan Nama Lengkap Anda",
                labelText: "Nama",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              controller: controller,
              onChanged: (String valueN) {
                print("Nama Lengkap : $valueN");
              },
            ),
    const SizedBox(
    height: 5,
    width: 10,
    ),
    SizedBox(
    height: 80,
    width: 500,
    child: TextField(
    decoration: InputDecoration(
    hintText: "Masukan No Resi Anda",
    labelText: "Resi",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20)
    ),
    ),
      controller: _controller,
      onChanged: (String valueR) {
      print("Nomer Resi : $valueR");}
    ),
    ),
      Text(
        "Apakah Anda Pelanggan Tetap?"
      ),
      
      Switch(
        value: switchOn,
        activeColor: Colors.black,
        onChanged: (bool value) {
        setState(() {
            switchOn = value;
           });
          }
        ),

       ElevatedButton(
      onPressed: (() {
        setState(() {
          Resi = _controller.text;
          name = controller.text;
        });
      }),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple
      ),
      child: const Text(
        'SUBMIT',
        style: TextStyle(color: Color.fromARGB(255, 7, 7, 7)),
      ),
      ),

      Text(
    '$Resi',
    style: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold
    ),
    ),
      ],
      ),
      ),
    );

}
}