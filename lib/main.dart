import 'dart:math';

import 'package:emojis/emoji.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Si je te manque',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String phrase = '';

  Emoji heart = Emoji.byName('Red Heart');
  Emoji Eyeheart = Emoji.byName('smiling face with heart-eyes');
  Emoji sadEye = Emoji.byName('crying face');
  Emoji clinoeil = Emoji.byName('winking face');


  List<String> anwser = new List();

  var rng = new Random();



  void initState(){
    super.initState();
    anwser.clear();
    anwser.add("Sache que tu me manques aussi mon amour ${heart.char}" );
    anwser.add("Tu sais, si je te manque autant, tu peux m'envoyer un message mon amour ${Eyeheart.char}${heart.char}" );
    anwser.add("Sache que quoi qu'il arrive, je serais toujours là pour toi ${heart.char}${heart.char}" );
    anwser.add("Tu es la femme de ma vie  ${Eyeheart.char}" );
    anwser.add("J'ai tellement hâte que tu rentre mon ange  ${Eyeheart.char}${Eyeheart.char}" );
    anwser.add("Je t'aime et je t'aimerais pour toujours ${heart.char}" );
    anwser.add("Je suis là mon amour ${heart.char}${heart.char}" );
    anwser.add("TU es la seule fille que j'aime et rien ne monde ne pourrait me faire changer d'avis ${heart.char}${heart.char}" );
    anwser.add("On se retrouvera très vite mon amour t'inquiète pas ${sadEye.char}${heart.char}" );
    anwser.add("Tu me manques tellement ${sadEye.char} ${heart.char}" );
    anwser.add("Jamais je n’aurais pu penser que la vie fût si belle… Et tout ça, c’est grâce à toi mon bébé ! ${Eyeheart.char}${Eyeheart.char}${Eyeheart.char}");
    anwser.add("Si j’avais dû le faire, j’aurais attendu l’éternité rien que pour être avec toi mon amour ${heart.char}${heart.char}${heart.char}");
    anwser.add("Tu es la raison pour laquelle ma vie est si parfaite ${Eyeheart.char}${Eyeheart.char}${Eyeheart.char}${heart.char}");
    anwser.add(" J’essaie vraiment de me concentrer sur mon travail mais rien n’y fait… Plus je cherche à t’effacer de mes pensées, plus tu envahis mon esprit... ${heart.char}");
    anwser.add("Les mots ne peuvent pas vraiment exprimer à quel point je te trouve belle, attirante, intelligente et drôle. Tu es parfaitement parfaite ! ${Eyeheart.char}${Eyeheart.char}${Eyeheart.char}${heart.char}");
    anwser.add("Merci de m’aimer tel que je suis. Je te promets que je vais faire tout mon possible pour faire de toi la femme la plus heureuse au monde. Parce que tu le mérites. Parce que je t’aime plus que les mots ne peuvent l’exprimer ! ${Eyeheart.char}${Eyeheart.char}${heart.char}");
    anwser.add("Tu mérites de recevoir tout ce que tu désires. En réalité, je ne vais pas pouvoir t’offrir tout cela mais je peux te donner tout ce que j’ai. Mon monde, mon âme, mon coeur et mon amour t’appartiennent ${heart.char}");
    anwser.add("L’amour que je ressens pour toi n’a pas de limite. Tu es l’étincelle qui allume mon coeur. Je t’aime plus que tout ${heart.char}");
    anwser.add("Sache qu'à mes yeux tu es vraiment importante ${heart.char}");
    anwser.add("Je ne te laisserais jamais tomber mon coeur ${heart.char}");
    anwser.add("Comment s’est passée ta journée mon bébé ? ${heart.char}");
    anwser.add("Tu as gagné un ticket pour un énorme calin ce soir ! ${Eyeheart.char}${heart.char}");
    anwser.add("Tu as gagné le choix de regarder ce que tu veux ce soir mais tu dois garder cette preuve ${clinoeil.char}${heart.char}");


  }

  var random;
  var doubleR;

  void _incrementCounter() {

    this.random = rng.nextInt(anwser.length);
    this.doubleR = 5000;

    if(this.doubleR == this.random){
      print("JE PASSE ICI DONC MARCHE");
      this.random = rng.nextInt(anwser.length);
    }else{
      print("je passe ici finalement doncc'est bon");
      setState(() {
        this.doubleR = this.random;
      });
    }

    print("Je sais que je suis prêt à t’aimer pour le reste de ma vie, est-ce que tu veux en faire de même ? Est-ce que tu veux m’épouser ?");

    setState(() {
      this.phrase = anwser[random];
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 75),
                child: Text(
                  'Si jamais je te manque appuie sur le bouton', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                ),
              ),
              container(phrase),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Text(heart.char),
        backgroundColor: Colors.grey[400],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget container(String phrase){

  if(phrase == null || phrase.isEmpty ||phrase == ''){
    return Container(
      child: Text(''),
    );
  }else{
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Container(
        margin: EdgeInsets.only(top: 75),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1)
        ),
        child: Text(
          '$phrase', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }

}
