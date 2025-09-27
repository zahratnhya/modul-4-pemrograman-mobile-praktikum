import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flexible'),
        ),
        body: Center(
          child: Row(
            children: [
              Flexible(
                  fit: FlexFit.tight, flex: 1, child: KotakBiruJempolKecil()),
              Flexible(
                 fit: FlexFit.tight, flex: 3, child: KotakBiruJempolKecil()),
              Flexible(
                  fit: FlexFit.loose, flex: 2, child: KotakBiruJempolKecil()),
            ],
          ),
        ),
      ),

    );
  }
}

class KotakBiruJempolKecil extends StatelessWidget{
  const KotakBiruJempolKecil({super.key});
  Widget build(BuildContext){
    return Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          Icons.thumb_up,
          color: Colors.white,
          size: 40,
        )
    );
  }
}
