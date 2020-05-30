import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
    void soundBox(int noteNumber){
        final player = AudioCache();
        player.play('note$noteNumber.wav');
    }

    Widget buildKey(int noteNumber, String color){
      return Expanded(
        child: FlatButton(
          color: pickColor(color),
          onPressed: (){
            soundBox(noteNumber);
          },
        ),
      );
    }
    
    MaterialColor pickColor(String color){
      MaterialColor background ;
      switch(color){
        case 'red' : background =  Colors.red;
          break;
          
        case 'green' : background = Colors.green;
          break;
          
        case 'yellow' : background = Colors.yellow;
         break;
         
        case 'blue' : background = Colors.blue;
         break;
         
        case 'orange' : background = Colors.orange;
        break;
        
        case 'indigo' : background = Colors.indigo;
        break;
        
        case 'purple' : background = Colors.purple;
        break;
      }
      return background;
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.grey[800],
              title: Text('Xylophone Game'),
            ),
            body: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(1, 'red'),
                  buildKey(2, 'yellow'),
                  buildKey(3, 'blue'),
                  buildKey(4, 'green'),
                  buildKey(5, 'orange'),
                  buildKey(6, 'purple'),
                  buildKey(7, 'indigo'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
