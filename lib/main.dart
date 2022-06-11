import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());
class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int note){
    final player = AudioCache();
    player.play('note$note.wav');
  }
  Expanded generateKey({required Color color, required int noteNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(noteNumber);
        },
        child: Text(''),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              generateKey(color:Colors.red,noteNumber: 1),
              generateKey(color:Colors.orange,noteNumber: 2),
              generateKey(color:Colors.yellow,noteNumber: 3),
              generateKey(color:Colors.green,noteNumber: 4),
              generateKey(color:Colors.teal,noteNumber: 5),
              generateKey(color:Colors.blue,noteNumber: 6),
              generateKey(color:Colors.purple,noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
