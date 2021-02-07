
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:share/share.dart';

void main(){
  runApp(Welcome());
}

class Welcome extends StatefulWidget {

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Solution Khajana",
      home: Welcme(),
    );
  }
}



//https://cdn.pixabay.com/photo/2016/11/29/05/08/apple-1867461__340.jpg
//https://images.unsplash.com/photo-1548393488-ae8f117cbc1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=358&q=80
class Welcme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.network("https://images.unsplash.com/photo-1549980384-d61217e50c4b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
          ,fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,)
           ,
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(1.0),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.1),
                  ],
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1

                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container())),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "CeGaa",
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "We are Trying to Make India \nAtmanirbhar and Developed.",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Route1()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
}




class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage('https://www.uscpublicdiplomacy.org/sites/uscpublicdiplomacy.org/files/styles/blog-785x482/public/uploads/Namaste_COVID19_India_v5.jpg?itok=NXEanYW-'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome ',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Text(
          'Atmanirbhar Bharat  is the vision of the Prime Minister of India Narendra Modi of making India a self-reliant nation. The first mention of this came in the form of the Atmanirbhar Bharat Abhiyan. We are continuosly trying to make India Atmanirbhar and Developd.We this goal our team are making such useful apps to make life\n of peoples easy and comfartable.\n your small contribution can help us a lot..\ncontact us on 7017097807 for donations.\n - ceGaa group',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue,Colors.blueAccent]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

//
class Route1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var divheight= MediaQuery.of(context).size.height;
    var divwidth= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),backgroundColor: Colors.deepPurple,title: Text("Solution Khjana"),actions: <Widget>[
        IconButton(icon: Icon(Icons.info_outline), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}),
        IconButton(icon: Icon(Icons.share), onPressed: (){Share.share("#Atmanirbhar Bharat\nI am promoting Atmanirbhar Bharat \n"
            "Made in India apps, \n --> https://play.google.com/store/apps/details?id=chand.cegaa\n"
            "Share this to 5 peoples for promoting \n"
            "indian apps.");}),
      ],),

      body: Stack(children: <Widget>[
        Image.asset(
          'assets/images/bgg.jpg',
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ), ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(
                vertical: divheight/29,
                horizontal: divwidth/10
            ),
              child: InkWell(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route2())
    );
    },child:
              Material(
                elevation: 6.0,
                child: Center(child: Container(color: Colors.white,
                  width: divwidth/1.2,
                  height: divheight/2.54,
                  child: SingleChildScrollView(child:
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.cyan,
                    elevation: 10.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[ Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          radius: 45.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/images/first.jpg'),
                        ),
                      ),
                        Text("Firstflight",style: TextStyle(fontSize: 30.0)),Text("This book presents you with texts in a avariety of genres,including the \n diary, play on literary, cultural"
                            " and sociological themes. Questions and \n ideas about individual and society , the understanding and the \n"
                            " management of one's emotions ,  and of one's place in a large  time\n and space , are here presented both"
                            " by such voices from  contemp-\norary history as Nelson Mandela  and Anne Frank, and in\n fiction from India"
                            " and abroad.\n"
                          ,style: TextStyle(fontSize: 15.0),)
                        ,SizedBox(),RaisedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Route2())
                          );
                        },highlightColor: Colors.amberAccent,child: Text("Enter",style: TextStyle(fontSize: 30.0),),padding: EdgeInsets.all(14.0),)

                      ],
                    ),
                  ),),
                ),),
              ),),),Padding(padding: EdgeInsets.symmetric(
                vertical: divheight/30,
                horizontal: divwidth/10
            ),
              child: InkWell(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route5())
    );
    },child:
              Material(
                elevation: 6.0,
                child: Center(child: Container(
                  width: divwidth/1.2,
                  height: divheight/2.54,
                  child: SingleChildScrollView(child:
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.pink,
                    elevation: 10.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[ Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          radius: 45.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/images/feet.jpg'),
                        ),
                      ),
                        Text("Footprints Without Feet",style: TextStyle(fontSize: 30.0)),Text("This book presents you with texts in a avariety of genres,including the \n diary, play on literary, cultural"
                            " and sociological themes. Questions and \n ideas about individual and society , the understanding and the \n"
                            " management of one's emotions ,  and of one's place in a large  time\n and space , are here presented both"
                            " by such voices from  a small-\ngirl as Named Bholi and how a child becomes Scientist, and in\n fiction from India"
                            " and abroad.\n",style: TextStyle(fontSize: 15.0),),
                        RaisedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Route5())
                          );
                        },highlightColor: Colors.cyan,child: Text("Enter",style: TextStyle(fontSize: 30.0),),padding: EdgeInsets.all(14.0),)

                      ],
                    ),
                  ),),
                ),),
              ),),)
          ],
        )
      ],)
      ,
    );
  }
}
//chpter names
class Route2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.redAccent,title: Text("First Flight"),actions: <Widget>[
        IconButton(icon: Icon(Icons.home), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Route1()));})
      ],),
      body: ListView(children: <Widget>[
        //1
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("A Letter to God"),
        subtitle: Text("G.L.Fuentes"),
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Letter())
        );}
        ,),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Dust of Snow"),
          subtitle: Text("Robert Frost"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Dust())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Fire and Ice"),
          subtitle: Text("Robert Frost"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Fire())
          );},),
        //ch
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Long Walk to Freedom"),
          subtitle: Text("Nelson Rolihlahla Mandela"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Nelson())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("A tiger in the zoo"),
          subtitle: Text("Leslie Norris"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Tiger())
          );},),
        //ch
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Two Stories about flying"),
          subtitle: Text(""),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Flying())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("How to tell wild animals"),
          subtitle: Text("Liam o'flaherty"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Tell())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("The Ball Poem"),
          subtitle: Text("John Berryman"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Ball())
          );},),
        //ch
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("From diary of anne frank"),
          subtitle: Text("Anne Frank"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Anne())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Amanda"),
          subtitle: Text("Robin Klein"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Amanda())
          );},),
        //ch
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("The Hundred Dresses"),
          subtitle: Text("El Boser Ester"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Hundred())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Animals"),
          subtitle: Text("Walt Whitman"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Animals())
          );},),
        //ch
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Glimpses of India"),
          subtitle: Text(""),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Glimpses())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("The Trees"),
          subtitle: Text("Adrienne Rich"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Tress())
          );},),
        //ch
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Mijbil The Otter"),
          subtitle: Text("Gavin Maxwell"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Mijbil())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Fog"),
          subtitle: Text("Carl Sandburg"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Fog())
          );},),
        //ch
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("Madam Rides The bus"),
          subtitle: Text("Vallikkannan"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Rides())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("The Taled of Custard Dragon"),
          subtitle: Text("Ogden Nash"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Custard())
          );},),
        //ch
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("The sermon at Benares"),
          subtitle: Text(""),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Sermon())
          );},),
        //poem
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("For Anne Gregory"),
          subtitle: Text("William Butler Yeats"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Annne())
          );},),
        //ch
        ListTile(leading: Icon(Icons.arrow_forward_ios)
          ,title: Text("The Proposal"),
          subtitle: Text("Anton Chekov"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Propsal())
          );},
        ),
      ],),
    );
  }
}
//second book
class Route5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text("Footprints Without Feet"),actions: <Widget>[
        IconButton(icon: Icon(Icons.home), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Route1()));})
      ],),
      body: ListView(children: <Widget>[
        //
        ListTile(leading: Icon(Icons.play_arrow)
          ,title: Text("A Triumph of Surgery"),
          subtitle: Text("James Herriot"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Triump())
          );},),
        //
        ListTile(leading: Icon(Icons.play_arrow)
          ,title: Text("The Thief's story"),
          subtitle: Text("The Midnight Visitor"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Thief())
          );},),
        //
        ListTile(leading: Icon(Icons.play_arrow)
          ,title: Text("A Question of Trust"),
          subtitle: Text("Victor Canning"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Question())
          );},),
        //
        ListTile(leading: Icon(Icons.play_arrow)
          ,title: Text("Footprints without feet"),
          subtitle: Text("H.G. Wells"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Feet())
          );},),
        //
        ListTile(leading: Icon(Icons.play_arrow)
          ,title: Text("The Making of a Scientist"),
          subtitle: Text("Robert W.Peterson"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Scientist())
          );},),
        //
        ListTile(leading: Icon(Icons.play_arrow)
          ,title: Text("The Necklace"),
          subtitle: Text("Guy De Maupassant"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Necklace())
          );},),
        //
        ListTile(leading: Icon(Icons.play_arrow)
          ,title: Text("The Hack Driver"),
          subtitle: Text("Sinclair Lewis"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Driver())
          );},), //

        ListTile(leading: Icon(Icons.play_arrow)
          ,title: Text("Bholi"),
          subtitle: Text("K.A. Abbas"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Bholi())
          );},),
        //

        ListTile(leading: Icon(Icons.play_arrow)
          ,title: Text("The Book That Saved the Earth"),
          subtitle: Text("Carire Boiko"),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Book())
          );},),
        //

        //


          ],),
    );
  }
}
//andar ka
class Route4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(";kcsdhioc"),),
      body: ListView(children: <Widget>[
        ListTile(leading: Icon(Icons.dashboard)
          ,title: Text("jia hind"),
          subtitle: Text(""),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Route3())
          );},)
      ],),
    );
  }
}
//splah
class Route3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Atmanirbhar Bharat",style: TextStyle(fontSize: 35.0,color: Colors.white),),),backgroundColor: Colors.black,
    );
  }
}
class Letter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""
Oral Comprehension Check
      
 1. What did Lencho hope for?
 Answer
 Lencho hoped for rains as the only thing that his field of ripe corn needed was a shower.
 
 2. Why did Lencho say the raindrops were like ‘new coins’?
 Answer
 Lencho’s crops were ready for harvest. As raindrops would have helped in getting a better harvest, resulting in more prosperity, so Lencho compared them with new coins.
 
 3. How did the rain change? What happened to Lencho’s fields?
 Answer
 The rain was pouring down. But suddenly, a strong wind began to blow and very large hailstones began to fall along with the rain. All the crop in Lencho’s fields destroyed.

 4. What were Lencho’s feelings when the hail stopped?
 Answer
 After hail stopped, Lencho’s soul was filled with sadness. He could see a bleak future for him and his family. Hew was worried aboutlack of food for the coming year.

  Oral Comprehension Check

 1. Who or what did Lencho have faith in? What did he do?
 Answer
 Lencho had faith in God. He believed that God’s eyes see everything, even what is deep in one’s conscience. He wrote a letter to God saying that he needed a hundred pesos to sow his field again.
 
 2. Who read the letter?
 Answer
 Postmaster read the letter.

 3. What did the postmaster do then?
 Answer
 The Postmaster first laughed. But then he became serious. He was deeply moved by the writer’s faith in God. He did not want to shake this faith. So he decided to collect the money and send it to Lencho.

  Oral Comprehension Check
 1.Was Lencho surprised to find a letter for him with money in it?
 Answer
 No. Lencho was not at all surprised to see the letter from God with money inside it. His confidence and faith in God was such that he had expected that reply from God.
 
 2. What made him angry?
Answer
When he finished counting moneyhe found only seventy pesos. But he demanded hundred pesos. He was confident that God could neither make a mistake nor deny him what he had requested. Therefore, he concluded that the post office employees must have taken the remaining thirty pesos.

Thinking about the Text

1. Who does Lencho have complete faith in? Which sentences in the story tell you this?
Answer
Lencho had complete faith in God. The sentences in the story that show this are as follows:
(i) But in the hearts of all who lived in that solitary house in the middle of the valley, there was a single hope: help from God.

(ii) All through the night, Lencho thought only of his one hope: the help of God, whose eyes, as he had been instructed, see everything, even what is deep in one’s conscience.

(iii) “God,” he wrote, “if you don’t help me, my family and I will go hungry this year.”

(iv) He wrote ‘To God’ on the envelope, put the letter inside and, still troubled, went to town.

(v) God could not have made a mistake, nor could he have denied Lencho what he had requested.

(vi) It said: “God: of the money that I asked for, only seventy pesos reached me. Send me the rest, since I need it very much.”

2. Why does the postmaster send money to Lencho? Why does he sign the letter ‘God’?
Answer
Postmaster was moved by Lencho’s complete faith in the God. So, he decided to send money toLencho. Moreover, the postmaster did not want to shake Lencho’s faith in God. So, he signed the letter ‘God’. It was a good ploy to convey a message that God had himself written the letter.

3. Did Lencho try to find out who had sent the money to him? Why/Why not?
Answer
No, Lencho does not try to find out who had sent the money to him. This is because he had great confidence in God and never suspected that it could be someone else other than God who would send him the money. His faith in God was so strong that he believed that God had sent him the money.

4. Who does Lencho think has taken the rest of the money? What is the irony in the situation? [Remember that the irony of a situation is an unexpected aspect of it. An ironic
situation is strange or amusing because it is the opposite of what is expected.]
Answer
Lencho thinks that the post office people have taken the money. It is the post office people who send the money to Lencho. But, on the other hand, Lencho thinks they have stolen his
money. He calls them crooks. Thus there is an element of irony in this situation.

5.Are there people like Lencho in the real world? What kind of a person would you say he
is? You may select appropriate words from the box to answer the question.
Greedy Naïve stupid ungrateful
selfish comical unquestioning
Answer
I don’t think there can be any such people in the real world. Lencho is literate and yet he doesn’t know how his letter will reach God without any address. He probably would be naïve and unquestioning.

6. There are two kinds of conflict in the story: between humans and nature, and between humans themselves. How are these conflicts illustrated?
Answer
The conflict between humans and nature is shown by the destruction of Lencho’s crops by the hailstorm. As the crops failed by hail, Lencho started feeling sad and gloomy after the
storm appropriately projects the conflict of the nature and the man. The Story also shown another conflict, between humans themselves. The postmaster, along with the help of the other post office employees, sent Lencho the money that they could manage to collect.
They were not related to Lencho in any manner. It was an act of kindness and selflessness on their part. Even though they did a good deed, Lencho blamed them for taking away some
amount of money. This shows that man does not have faith in his fellow humans, thereby giving rise to this conflict.

Thinking about the Language

1. There are different names in different parts of the world for storms, depending on their
nature. Can you match the names in the box with their descriptions below, and fill in the
blanks? You may use a dictionary to help you.
gale, whirlwind, cyclone,
hurricane, tornado, typhoon
1. A violent tropical storm in which strong winds move in a circle:
__ __ c __ __ __ __
2. An extremely strong wind: __ a __ __
3. A violent tropical storm with very strong winds: __ __ p __ __ __ __
4. A violent storm whose centre is a cloud in the shape of a funnel:
__ __ __ n __ __ __
5. A violent storm with very strong winds, especially in the western Atlantic ocean: __ __ r
__ __ __ __ __ __
6. A very strong wind that moves very fast in a spinning movement and causes a lot of
damage: __ __ __ __ l __ __ __ __

Answer
1. Cyclone
2. Gale
3. Typhoon
4. Tornado
5. Hurricane
6. Whirlwind
2. Match the sentences in Column A with the meanings of ‘hope’ in Column B.
A B
1. Will you get the subjects you want to
study in college?
I hope so.
− a feeling that something good will
probably happen
2. I hope you don’t mind my saying this,
but I don’t like the way you are arguing.
− thinking that this would happen (It may or
may not have happened).
3. This discovery will give newhope to
HIV/AIDS sufferers.
− stopped believing that this good thing
would happen
4. We were hoping against hopethat the judges would not notice our mistakes.
− wanting something to happen (and
thinking it quite possible)
5. I called early in the hope of speaking to her before she went to school.
− showing concern that what you say
should not offend or disturb the other
person: a way of being polite
6. Just when everybody had given up hope, the fishermen came back, seven days after the cyclone.""",style: TextStyle(fontSize: 20.0,color: Colors.black),)
      ]
    ,
    ),backgroundColor: Colors.white,
    );
  }
}
//nelson
class Nelson extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Comprehension Check
      
1. Where did the ceremonies take place? Can you name any public buildings in India that are
made of sandstone?
Answer
The ceremonies took place in the campus of the Union Building of Pretoria. The Parliament House in New Delhi, the Rashtrapati Bhavan in New Delhi, the Supreme
Court of India in New Delhi and Madras High Court in Chennai are some examples of Indian public buildings that are made of sandstone.

2. Can you say how 10 May is an ‘autumn day’ in South Africa?
Answer
10 May is an ‘autumn day’ in South Africa because on this day there was the largest gathering of international leaders on South African soil for the installation of South Africa’s
first democratic, non-racial government.

3. At the beginning of his speech, Mandela mentions “an extraordinary human disaster”. What does he mean by this? What is the “glorious … human achievement” he speaks of at the end?
Answer
By human disaster Mandela means to say that coloured people have suffered a lot due to discrimination in the hands of whites. He considered it as great glorious human
achievement that a black person became the president of a country where the blacks are not considered as human being and are treated badly.
4. What does Mandela thank the international leaders for?
Answer
Mandela felt privileged to be the host to the nations of the world because not too long ago, the South Africans were considered outlaws. He thus thanked all the international leaders
for having come to witness his investiture as President since this event could be considered as a common victory for justice, peace and human dignity. 

5. What ideals does he set out for the future of South Africa?
Answer
Mandela set out the ideals of poverty alleviation, removal of suffering of people. He also set the ideal for a society where there would be no discrimination based on gender or racial origins.

Oral Comprehension Check

1. What do the military generals do? How has their attitude changed, and why?
Answer
The highest military generals of the South African defence force and police saluted Mandela and pledged their loyalty.
Their attitude towards blacks had taken great change. Instead of arresting a black they Saluted him.

2. Why were two national anthems sung?
Answer
On the day of the inauguration, two national anthems were sung, one by the whites, and the other by the blacks. This symbolized the equality of blacks and whites.

3. How does Mandela describe the systems of government in his country (i) in the first decade, and (ii) in the final decade, of the twentieth century?
Answer
(i) In the first decade of the twentieth century, the white-skinned people of South Africa patched up their differences and erected a system of racial domination against the darkskinned people of their own land, thus creating the basis of one of the harshest and most
inhumane societies the world had ever known.

(ii) In the last decade of the twentieth century, the previous system had been overturned forever and replaced by one that recognized the rights and freedoms of all peoples, regardless of the colour of their skin.

4. What does courage mean to Mandela?
Answer
For Mandela courage does not mean the absence of fear but a victory over fear. According to him brave men need not be fearless but should be able to conquer fear.

5. Which does he think is natural, to love or to hate?
Answer
For Mandela, love comes more naturally to the human heart than hate.

Oral Comprehension Check

1. What “twin obligations” does Mandela mention?
Answer
Mandela mentions that every man has twin obligations. The first is to his family, parents, wife and children; the second obligation is to his people, his community and his country.

2. What did being free mean to Mandela as a boy, and as a student? How does he contrast these “transitory freedoms” with “the basic and honourable freedoms”?
Answer
Like any other kid for Mandela also the freedom meant a freedom to make merry and enjoy the blissful life. Once anybody becomes an adult then antics of childhood looks like
transitory because most of the childish activity is wasteful from an adult’s perspective. Once you are adult then someday you have to earn a livelihood to bring the bacon home, then
only you get an honourable existence in the family and in the society.

3. Does Mandela think the oppressor is free? Why/Why not?
Ans
Mandela does not feel that the oppressor is free because according to him an oppressor is a prisoner of hatred, who is locked behind the bars of prejudice and narrow-mindedness. He
feels that both the oppressor and the oppressed are robbed of their humanity.

Thinking about the Text

1. Why did such a large number of international leaders attend the inauguration? What did
it signify the triumph of?
Answer
The presence of large number of international leaders was a gesture of solidarity from international community to the idea of the end of apartheid. It signified the triumph of
good over evil, the triumph of the idea of a tolerant society without any discrimination.

2. What does Mandela mean when he says he is “simply the sum of all those African patriots” who had gone before him?
Answer
Mandela wants to pay his tribute to all the people who had sacrificed their lives for the sake of freedom. he feels that he is the sum of all those African patriots who had gone before
him because those heroes of yesterday years had paved the path of co-operation and unity for him. Therefore, he got the support of his people to be able to come to power to bring
equality for his own people.

3.Would you agree that the “depths of oppression” create “heights of character? How does Mandela illustrate this? Can you add your own examples to this argument?
Answer
Yes, I agree that the “depths of oppression” create “heights of character”. Nelson Mandela illustrates this by giving examples of great heroes of South Africa who sacrificed their lives in
the long freedom struggle. India is full of such examples. During our freedom struggle there was a galaxy of leaders of great characters. Probably the oppression of British rule created
so many men of such characters. If we compare this with the quality of political leaders India is having today, then Nelson Mandela seems to be absolutely right.

4. How did Mandela’s understanding of freedom change with age and experience?
Answer
With age Nelson Mandela realised that he had a lot of responsibilities of his people, his community and his country. As a boy, Mandela did not have a hunger for freedom because
he thought that he was born free. He believed that as long as he obeyed his father and abided by the customs of his tribe, he was free in every possible manner. He had certain
needs as a teenager and certain needs as a young man. Gradually, he realized that he was selfish during his boyhood. He slowly understands that it is not just his freedom that is being
curtailed, but the freedom of all blacks. It is after attaining this understanding that he develops a hunger for the freedom of his people.

5. How did Mandela’s ‘hunger for freedom’ change his life?
Answer
Mandela realized in his youth that it was not just his freedom that was being curtailed, but the freedom of all blacks. The hunger for his own freedom became the hunger for the freedom of his people. This desire of a non-racial society transformed him into a virtuous
and self-sacrificing man. Thus, he joined the African National Congress and this changed him from a frightened young man into a bold man.
""",
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//flying
class Flying extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Thinking about Text
        
1. Why was the young seagull afraid to fly? Do you think all young birds are afraid to make their first flight, or are some birds more timid than others? Do you think a human baby also
finds it a challenge to take its first steps?
Answer
The young seagull was afraid to fly because it was its first flight. It is a well-known fact that doing something for the first time is challenging. Therefore, all young birds must be afraid to
make their first flights. Similarly, a human baby would also find it a challenge to take its first step.

2. “The sight of the food maddened him.” What does this suggest? What compelled the young seagull to finally fly?
Answer
The young seagull was very hungry. It was this hunger that ultimately compelled it to fly. Its hunger only intensified when it saw its mother tearing at a piece of fish that lay at her feet. It cried to her, begging her to get some food. When its mother came towards it with food in
her beak, it screamed with joy and anticipation. However, she stopped midway. It wondered why she did not come nearer. Not being able to resist or control its hunger any longer, it
dived at the food in its mother’s beak. At that moment, his hunger overpowered his fear of the great expanse of sea beneath the cliff. Finally, this plunge was followed by the natural
reaction of its body, i.e., to fly.

3. “They were beckoning to him, calling shrilly. “Why did the seagull’s father and mother threaten him and cajole him to fly?
Answer
The young seagull was afraid to fly. Even when it saw its brothers and sisters flying, and its parents helping and teaching them, it could not gather enough courage to make that first
flight. That is why its father and mother were calling to it shrilly and scolding it. They threatened to let it starve on its ledge if it did not fly. They did so because they wanted it to
leave its fear behind and learn to fly.

The Black Aeroplane
By Fredrick Forsyth

Thinking about the Text

1. “I’ll take the risk.” What is the risk? Why does the narrator take it?
Answer
The risk was to fly through the black storm clouds. The narrator took the risk because he wanted to reach Paris to celebrate Christmas with his family.

2. Describe the narrator’s experience as he flew the aeroplane into the storm.
Answer
As he flew into the storm, everything went black. It was impossible to see anything outside the plane. It jumped and twisted in the air. When he looked at his compass, he saw that it
was turning round and round. It was dead. Along with it, the other instruments, including the radio, were also dead. Suddenly, he saw another aeroplane. Its pilot waved at him,
asking him to follow. He was glad to find a helper. He was using his last fuel tank and there was only enough fuel to fly five or ten minutes. Then, the other pilot started to go down and
he followed. He suddenly came out of the clouds and saw the runway, on which he then landed his plane safely.

3. Why does the narrator say, “I landed and was not sorry to walk away from the old
Dakota…”?
Answer
He was delighted to land safely out of dark stormy clouds, therefore, he was not sorry to walk away for his plane. He felt bad, when he was no able to thank his guide, his mentor
who saved him from frightening situations, but he was so happy after landing that he didn’t feel sorry for not being able to thank the guide pilot.

4. What made the woman in the control centre look at the narrator strangely?
Answer
The women in the control room was surprised when the narrator asked about the other aeroplane and its pilot. She said that there was no aeroplane seen on the radar.

5. Who do you think helped the narrator to reach safely? Discuss this among yourselves and give reasons for your answer.
Answer
Probably, it was the narrator’s own self that helped him through the storm. There was no other plane in the storm as the woman at the control centre could see only his plane on the
radar. Also, no other plane was flying that night. In his fear, he might have been hallucinating. He was a good pilot, and it might have been his own self that came to his help.

Thinking about the Language:

1. Try to guess the meanings of the word ‘black’ in the sentences given below. Check the
meanings in the dictionary and find out whether you have guessed right.
1. Go and have a bath; your hands and face are absolutely black__________.
2. The taxi-driver gave Ratan a black look as he crossed the road when the traffic light was
green.__________
3. The bombardment of Hiroshima is one of the blackest crimes against humanity.
__________
4. Very few people enjoy Harold Pinter’s black comedy.__________
5. Sometimes shopkeepers store essential goods to create false scarcity and then sell these
Class 10 First flight – Chapter 3: Two Stories about Flying English
Printed from Vedantu.com. Score more in your Exams - Start learning from Best Tutors on Vedantu.
Book your free trial today - Call us at +91 92433 43344
in black. __________
6. Villagers had beaten the criminal black and blue.__________
Answer

1. The meaning of ‘black’ in this sentence is that the face and hands are dark with dust and
heat.
2. Here, ‘black’ refers to an angry look.
3. Here, ‘blackest’ refers to the darkest and cruellest crime against humanity.
4. Here, ‘black’ refers to dark and gloomy comedy.
5. The meaning of ‘black’ in this sentence is that the shopkeepers sell the described goods
‘at a higher price’.
6. Here, ‘black’ means that the criminal suffered excessive beating at the hands of the
villagers.

        """,

        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}

//anne
class Anne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Comprehension Check
        
1. What makes writing in a diary a strange experience for Anne Frank?
Answer
First she had never written anything like this before and secondly she thought that nobody is going to read or would be interested in her diary.

2. Why does Anne want to keep a diary?
Answer
Anne wants to keep a diary as she didn’t have friend.

3. Why did Anne think she could confide more in her diary than in people?
Answer
She could confide in her close friend but she didn’t have one, the friends she had there were to have more fun and good times rather than the ones on whom she could confide. She also
believes that a paper to have more patience than people, so she decided to write and confide in a diary.

1. Why does Anne provide a brief sketch of her life?
Answer
Anne provides a brief sketch of her life since no one would understand a word of her musings if she were to jump right in.

2. What tells you that Anne loved her grandmother?
Answer
Her statement, that no one could understand her intensity of love for her grandma tells that she loved her grandmother. Moreover, the touching gesture of lighting up one candle for
grandmother during Anne’s birthday is also a poignant reminder of the love for grandma.

Oral Comprehension Check

1. Why was Mr Keesing annoyed with Anne? What did he ask her to do?
Answer
Mr. Keesing was annoyed with Anne because she talked very much in the class. He assigned her extra homework, asking her to write an essay on the subject, ‘A Chatterbox’.

2. How did Anne justify her being a chatterbox in her essay?
Answer
She gave two arguments to justify her ‘Chatterbox’, one that chatting in student’s traits and other reason that nothing can be done about the inherited traits.

3. Do you think Mr Keesing was a strict teacher?
Answer
Mr. Keesing was a strict teacher. However, he was not rigidly strict. He expected discipline and silence in his class while he was teaching, which is acceptable. He punished Anne by
asking her to write an essay on ‘A Chatterbox’. When Anne wrote a convincing essay on it, he received it with a good laugh. However, when Anne continued with her talking, he punished her again by asking her to write another essay; this time the topic was ‘An
Incorrigible Chatterbox’. Even after this when she kept talking, he asked her to write on the topic ‘Quack Quack Quack, said Mistress Chatterbox”. He was trying to play a joke on her.
However, she came up with a brilliant poem, and he read this poem in the class, acknowledging its content. Therefore, in regard of these events, Mr. Keesing cannot be
entirely labelled as a strict teacher. He was fun-loving too.

4. What made Mr Keesing allow Anne to talk in class?
Answer
Anne was able to justify her talkative nature every time she was punished by Mr. Keesing. On three occasions, as punishment, he gave her topics to write essays on. However, on each
occasion he was impressed by the manner in which she presented her arguments. Finally, Mr. Keesing accepted the fact that Anne would always be that way. Hence, she was allowed to talk in class.

Thinking about the Text

1. Was Anne right when she said that the world would not be interested in the musings of a
thirteen-year-old girl?
Answer
No, Anne was not right when she said that the world would not be interested in the musings of a thirteen-year-old girl.

2. There are some examples of diary or journal entries in the ‘Before You Read’ section. Compare these with what Anne writes in her diary. What language was the diary originally written in? In what way is Anne’s dairy different?
Answer
Anne’s diary was originally written in Dutch. Her diary is different from the others in many aspects. She had named her diary ‘Kitty’. She thought of it as her only true friend whom she
could confide in. She treated it as another person who was listening to her daily accounts. She wrote all her stories in it. She started by writing ‘Dearest kitty’ and ended the account
by writing, ‘Yours, Anne’. Her diary was a lot more personal than other diaries.

3. Why does Anne need to give a brief sketch about her family? Does she treat ‘Kitty’ as an
insider or an outsider?
Answer
Anne Frank claims that paper has more patience than people. She usually sits depressed and all alone .She claims of having no real friend .This lends the reader the perception that there
isn’t any body to take care of Anne Frank. To clear the clouds of doubt , Anne Frank gives the sketch of her adorable father, compassionate mother, kind grandmother, and loving sister.
She treated Kitty as an insider because she called it her best friend and was ready to confide in it.

4. How does Anne feel about her father, her grandmother, Mrs Kuperus and Mr Keesing?
What do these tell you about her?
Answer
Anne felt that her father was the most adorable father she had ever seen. Anne remembered her grandmother even after her death. She wrote in her diary that no
one knew how often she thought of her grandmother and still loved her. In the sixth form at the Montessori nursery school, her teacher was Mrs Kuperus, who was
also the headmistress. At the end of the year, they were both in tears as they said a heartbreaking farewell. Mr Keesing was her Maths teacher. He was annoyed with her because she talked too much.
However, Anne was able to justify her talkative nature every time she was punished by Mr. Keesing. On each occasion he was impressed by the manner in which she presented her
arguments. All these incidents show how lovable and smart Anne was. Everybody was attached to her, and even Mr Keesing could not help but laugh at her essays and acknowledge her smart mind.

5. What does Anne write in her first essay?
Answer
In her first essay, titled ‘A Chatterbox’, Anne wanted to come up with convincing arguments to prove the necessity of talking. She began thinking about the subject. She wrote three
pages and was satisfied. She argued that talking was a student’s trait and that she would do her best to keep it under control. She further wrote that she would never be able to cure
herself of the habit since her mother talked as much as she did. There was not much that one could do about inherited traits. Mr Keesing too had a good laugh reading her arguments.

6. Anne says teachers are most unpredictable. Is Mr Keesing unpredictable? How?
Answer
Anne felt that a quarter of her class was dumb, and should be kept back and not promoted to the next class. However, she also felt that teachers were the most unpredictable
creatures on earth. Mr Keesing could be termed as unpredictable. The way Anne always talked while the class was going on, any teacher would lose his temper. However, after
several warnings, all Mr Keesing did was to assign her extra homework. She had to write an essay on ‘A Chatterbox’. In this way, he tried to play a joke on her. Each time that he asked
her to write such essays, she wrote very well. She kept countering his jokes. One could not have predicted that he would take all the jokes in the right spirit. Finally, when she wrote an
entire essay in verse he accepted her talkative nature and actually allowed her to talk in class. He did not even assign her any more extra homework. That is why it can be said that
Mr Keesing was unpredictable.

7. What do these statements tell you about Anne Frank as a person?

(i) We don’t seem to be able to get any closer, and that’s the problem. Maybe it’s my fault
that we don’t confide in each other.

(ii) I don’t want to jot down the facts in this diary the way most people would, but I want the
diary to be my friend.

(iii) Margot went to Holland in December, and I followed in February, when I was plunked down on the table as a birthday present for Margot.

(iv) If you ask me, there are so many dummies that about a quarter of the class should be kept back, but teachers are the most unpredictable creatures on earth.

(v) Anyone could ramble on and leave big spaces between the words, but the trick was to come up with convincing arguments to prove the necessity of taking.
Answer
(i) These lines show that Anne had no true friend whom she could confide in. She even put the blame on herself that the fault might be hers.

(ii) This line shows that Anne really considered her diary as a friend whom she could trust and narrate all her stories to. She did not want just a diary in which she could write down
the facts like others did. She considered it as her friend and named her Kitty.

(iii) This statement shows that Anne was a fun-loving person. She was witty and knew how to present things in a funny way. She narrated this incident with a lot of fun. The use of
‘plunked down’ shows her sense of humour.

(iv) This statement shows that she had an opinion on everything. She thought that a quarter of her class was full of dummies, signifying that she herself was intelligent enough to make it
to the next class. She thought of teachers as the most unpredictable creatures on earth because nobody could say which students they would fail and which students would be
passed on to the next class.

(v) This statement shows that Anne knew a lot about writing. She was given the task of writing an essay as a punishment. She took it on with full vigour. She did not want to write it
like others who merely left big spaces between the words to make the essay look voluminous. She knew that the trick was to come up with a convincing argument to prove
the necessity of talking. She was different in her approach from everybody else. """,

        style: TextStyle(fontSize: 20.0, color: Colors.black))

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//Hundred

class Hundred extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Oral Comprehension Check
      
1.Where in the classroom does Wanda sit and why?
Answer
Wanda used to sit in the seat next to the last seat, in the last row, in Room Thirteen. She sat there because her feet were normally caked with dry mud and very dirty. So in order to
avoid being laughed at by her classmates, she sat there to hide her dirty feet.

2. Where does Wanda live? What kind of a place do you think it is?
Answer
Wanda lived at Boggins Heights. It seems that it was a place far away from the school and also, where there was a lot of dry mud, thereby indicating that it was not a very rich locality.

3. When and why do Peggy and Maddie notice Wanda’s absence?
Answer
Peggie and Maddie noticed Wanda’s absence after three days, i.e., on Wednesday because they wanted to be with her for a lot of fun. They waited for her for a long time but she didn’t turn up.

4. What do you think “to have fun with her” means?
Answer
Wanda was a quiet and shy girl who was ashamed of dust laden feet. The girls used to make funof her. This gave them a lot of pleasure therefore, they wanted to have fun with her.

Oral Comprehension Check

1. In what way was Wanda different from the other children?
Answer
Wanda was different from other children. She did not have any friends. She came to school alone and went home alone. She always wore a faded blue dress that did not fit her
properly. Unlike other children, she did not talk to anybody.

2. Did Wanda have a hundred dresses? Why do you think she said she did?
Answer
No, she did not have a hundred dresses because she was poor and wore the same faded dress to school everyday. She had an inferiority complex. In order to hide the complex and
impress the other girls, she always said that she had a hundred dresses.

Answer
Wanda did not show any feelings regarding the dresses game. It is most likely that she was deeply hurt. It could have been one of the reasons why her family left the place and moved
to the city. She was a girl who was very poor and came form a long distance which made her feet dirty. She wanted to draw attention of her friends. So, she felt very happy whenever she told her
friend that she had hundred dresses without realising that they were making fun of her. 

3. Why does Maddie stand by and not do anything? How is she different from Peggy? (Was
Peggy’s friendship important to Maddie? Why? Which lines in the text tell you this?)
Answer
Maddie always stood by and never did anything as she was afraid that if she did, she would be the next target of the children. She herself was poor and therefore, felt that if she spoke
against the others, they would target her next. Unlike her, Peggy was a rich girl. This was also the reason why Maddie could think from Wanda’s point of view, but Peggy could not.
Maddie was Peggy’s best friend. It seemed as if she was in awe of Peggy. She admired her quite a lot as she said that Peggy was the most liked girl in the room and that she drew
better than anyone else. She did not have the courage to go against her. Some of the lines from the text which show that Peggy’s friendship was important to Maddie are as follows.

(i) Peggy, who had thought up this game, and Maddie, her inseparable friend, were always the last to leave.

(ii) She was Peggy’s best friend, and Peggy was the best-liked girl in the whole room.

(iii) Peggy could not possibly do anything that was really wrong, she thought.

(iv) Oh, Maddie was sure Peggy would win.

4. What does Miss Mason think of Wanda’s drawings? What do the children think of them? How do you know?
Answer
Miss mason appreciated the paintings of Wanda. She was impressed at the creativity of the girl because she had painted hundred paintings which were in wide range of variety.
The children also admired the drawings. Everybody stopped and whistled or murmured admiringly. After Miss Mason had announced that Wanda was the winner, they burst into
applause, and even the boys were glad to have a chance to stamp on the floor and whistle. Also, just as Peggy and Maddie entered the room, they stopped short and gasped. Later
they recognized the designs as those which Wanda had described to them. And in the end, Peggy exclaimed, “…and I thought I could draw.” This shows that she also realized how good Wanda’s drawings were.

  The Hunded Dresses-||
  
  1.What did Mr Petronski’s letter say?
Answer
Mr Pertronski’s letter said that Wanda would not come to school anymore as they were shifting to another city. He also said that there, nobody would ask them why they had funny
names because there were plenty of funny names in the city.

2. Is Miss Mason angry with the class, or is she unhappy and upset?
Answer
Yes, Miss Mason was unhappy and upset as she was was disturbed by the ill treatment to Wanda by the students of her class. She didn’t approve of the humiliation of a child just
because of her name, dresses and house.

3. How does Maddie feel after listening to the note from Wanda’s father?
Answer
After listening to the note from Wanda’s father, Maddie had a very sick and guilty feeling in the bottom of her stomach. She could not concentrate when she tried to prepare her
lessons. She had not enjoyed listening to Peggy ask Wanda how many dresses she had in her closet.

4. What does Maddie want to do?
Answer
Maddie wanted to tell Wanda that she didn’t want to hurt her feelings.

Oral Comprehension Check

1. What excuses does Peggy think up for her behaviour? Why?
Answer
Peggy thought that she was satisfied that she never called Wanda a foreigner or made fun of her name. She also said that she never thought Wanda had even the sense to know that
they were making fun of her. She realised her mistake of thinking that Wanda was not bright enough to understand her insult.

2. What are Maddie’s thoughts as they go to Boggins Heights?
Answer
Maddie is feeling bad about Wanda and herself. She is feeling very sad for not even getting a chance to say sorry to Wanda.

3. Why does Wanda’s house remind Maddie of Wanda’s blue dress?
Answer
Wanda’s blue dress was old, faded but used to be neat and clean. Similarly her house was small and makeshift but clean. Therefore, it reminded Maddie of Wanda’s blue dress

Oral Comprehension Check

4. What does Maddie think hard about? What important decision does she come to?
Answer
Wanda thinks about not letting injustice happen to anyone. She makes vow that she would protest if anybody misbehaves with anybody. She won’t be a mute spectator the way she did earlier. In a way the episode of Wanda’s family leaving that city works as major change
agent for Maddie’s personality.

Oral Comprehension Check

1. What did the girls write to Wanda?
Answer
The girls wrote a friendly letter to Wanda telling her that she had won the contest. They also wrote how pretty her drawings were. They asked her if she liked the place where she was
living and if she liked her new teacher. They wanted to say that they were sorry. However, they ended up with just writing a friendly letter. They signed it with lots of X’s for love.
2. Did they get a reply? Who was more anxious for a reply, Peggy or Maddie? How do you know?
Answer
No, they did not get a reply. Maddie was more anxious for a reply as she thought a lot about it. She would put herself to sleep making speeches about Wanda and defending her from
great crowds of girls who were trying to tease her. Before Wanda could press her lips together in a tight line, which she did before answering, Maddie would cry out and ask
everybody to stop and then, everybody would feel ashamed the way she felt. Peggy, on the other hand, had begun to forget about the whole affair. This shows that Maddie was more
anxious for a reply than Peggy.

3. How did the girls know that Wanda liked them even though they had teased her? 
Answer
The girls came to know that Wanda liked them even though they had teased her as she had asked Miss Mason to give the green dress with red trimming to Peggy and the blue one to
Maddie. Later when Maddie looked at the drawing very carefully, she realized that the dress had a face and a head, which looked like her own self. The head and face in the drawing
given to Peggy looked just like Peggy. That is why the girls knew that Wanda liked them even though they had teased her.

Thinking about the Text

1. Why do you think Wanda’s family moved to a different city? Do you think life there was going to be different for their family?
Answer
Wanda family moved to different city because of her father felt bad about the bad behaviour of girls towards Wanda.

2. Maddie thought her silence was as bad as Peggy’s teasing. Was she right?
Answer
Yes, Maddie was right when she thought that her silence was as bad as Peggy’s teasing because her silence encouraged Peggy to tease her. A person who sees something wrong
happening in front of him/her is as much an offender as the person committing the offence. Maddie was too afraid to say anything because she did not want to lose Peggy’s friendship.
Also, she was poor herself, so she feared that everybody would make fun of her too. 

3. Peggy says, “I never thought she had the sense to know we were making fun of her anyway. I thought she was too dumb. And gee, look how she can draw!” What led Peggy to
believe that Wanda was dumb? Did she change her opinion later?
Answer
Peggy believed that Wanda was dumb as she could not understand why Wanda said she had a hundred dresses, even when everybody knew that she was poor. She knew everybody was
laughing at her. Even then, she kept giving the same answer. She even described the dresses she said she had. That is why Peggy thought Wanda was dumb. She changed her opinion
later when she saw the hundred dresses Wanda had talked about. She saw the drawings and was highly impressed by their beauty. She realized that Wanda was a very good artist.

4. What important decision did Maddie make? Why did she have to think hard to do so?
Answer
The important decision that Maddie made was that she would never stand by and say nothing again. If she ever heard anybody picking on someone because they were funnylooking
or because they had strange names, she would speak up. She did not even mind losing Peggy’s friendship over it. She knew she could not make things right with Wanda.
However, she had decided that in the future, she would never make anybody else unhappy again.
She was unhappy that she could not find Wanda at her home. She could not sleep that night. She thought about Wanda, her faded blue dress, and the little house she lived in. She
also thought about the hundred glowing pictures, which were all lined up in the classroom. She was feeling guilty of not having said anything when everybody else was teasing Wanda.
It was her guilt that made her think very hard and arrive at the important decision. 

5. Why do you think Wanda gave Maddie and Peggy the drawings of the dresses? Why are they surprised?
Answer
Wanda gave Maddie and Peggy the drawings of dresses because they made fun of her hundred dresses. They believe her to be a liar. They were surprised because they always
made fun of here dresses and insulted her, but she had gifted them with those beautiful designs.

6. Do you think Wanda really thought the girls were teasing her? Why or why not?
Answer
Yes, Wanda knew that girls were teasing her She would have known that the children intended to make fun of her poverty, and would have laughed at her whatever she might
have said. This could have been the reason for her exaggerating everything whenever she answered their questions.""",

        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//glimpses
class Glimpses extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Oral Comprehension Check
      
1. What are the elders in Goa nostalgic about?
Answer
The elders in Goa were nostalgic about the good old Portuguese days, the Portuguese, and their famous loaves of bread.

2. Is bread-making still popular in Goa? How do you know?
Answer
Yes, bread-making is still popular in Goa. The author has described about the existence of time-old furnaces and their still burning fire. The Goan society is still having moulders, bread mixers and bakers.

3. What is the baker called?
Answer
The bakers are known as pader .

4. When would the baker come everyday? Why did the children run to meet him?
Answer
The baker came twice every day, once when he set out in the morning on his selling round, and then again, when he returned after emptying his huge basket. The children ran to meet
him not because of their love of the loaf, which was bought by the maid-servant of the house. They actually longed for the bread-bangles, which they chose carefully. Sometimes, it
was a sweet bread of special make.

Oral Comprehension Check

1.Match the following. What is a must
(i) as marriage gifts? – cakes and bolinhas
(ii) for a party or a feast? – sweet bread called bol
(iii) for a daughter’s engagement? – bread
(iv) for Christmas? – sandwiches
Answer
(i) as marriage gifts? – sweet bread called bol
(ii) for a party or a feast? – bread
(iii) for a daughter’s engagement? – sandwiches
(iv) for Christmas? – cakes and bolinhas
2. What did the bakers wear: (i) in the Portuguese days? (ii) when the author was young?
Answer
(i) In the Portuguese days, the bakers had a peculiar dress known as the kabai. It was a
single-piece long frock reaching down to the knees.
(ii) When the author was young, he saw the bakers wearing a shirt and trousers, which were
shorter than full-length ones and longer than half pants.
3. Who invites the comment − “he is dressed like a pader”? Why?
Answer
Anyone who wears a half-pant which reaches just below the knees invites the comment that
“he is dressed like a pader”. This was so because the bakers were known as pader and they
wore such half pants.
4. Where were the monthly accounts of the baker recorded?
Answer
The monthly accounts of the baker were recorded on some wall in pencil.
5. What does a ‘jackfruit-like appearance’ mean?
Answer
A ‘jackfruit-like appearance’ means a plump physique. Such a physique was linked to the
bakers because they never starved. Baking was a profitable profession. The baker, his
family, and his servants always looked happy and prosperous and had a ‘jackfruit-like
appearance’.
1.Which of these statements are correct?
(i) The pader was an important person in the village in old times.
(ii) Paders still exist in Goan villages.
(iii) The paders went away with the Portuguese.
(iv) The paders continue to wear a single-piece long frock.
(v) Bread and cakes were an integral part of Goan life in the old days.
(vi) Traditional bread-baking is still a very profitable business.
(vii) Paders and their families starve in the present times.
Answer
(i) Correct
(ii) Correct
(iii) Incorrect. The paders still exist in Goan villages.
(iv) Incorrect. The paders wear shirts, and trousers that are shorter than full-length ones and
longer than half pants.
(v) Incorrect. Bread and cakes are still an integral part of Goan life.
(vi) Correct
(vii)Incorrect. Baking is still a very profitable business in Goa.

2. Is bread an important part of Goan life? How do you know this?
Answer
Bread is an important part of Goan life. Marriage gifts are meaningless without the sweet bread known as the bol. For a party, bread is a must, while for Christmas, cakes and bolinhas
are a must. Sandwiches must be prepared by the lady of the house on her daughter’s engagement. The author says that everybody loves the fragrance of loaves. The elders were
given loaves and the children were given bread-bangles, which they longed for. Also, the fact that bakery is a profitable profession shows that the love for bread is enormous in Goa.

3. Tick the right answer. What is the tone of the author when he says the following?
(i) The thud and the jingle of the traditional baker’s bamboo can still be heard in some
places. (nostalgic, hopeful, sad)
(ii) Maybe the father is not alive but the son still carries on the family profession. (nostalgic,
hopeful, sad)
(iii) I still recall the typical fragrance of those loaves. (nostalgic, hopeful, naughty)
(iv) The tiger never brushed his teeth. Hot tea could wash and clean up everything so nicely,
after all. (naughty, angry, funny)
(v) Cakes and bolinhas are a must for Christmas as well as other festivals. (sad, hopeful,
matter-of-fact)
(vi) The baker and his family never starved. They always looked happy and prosperous.
(matter-of-fact, hopeful, sad)
Answer
(i) Nostalgic
(ii) Nostalgic
(iii) Nostalgic
(iv) Funny
(v) Matter-of-fact
(vi) Matter-of-fact

II. Croog

Thinking about the Text

1. Where is Coorg?
Answer
Coorg is the smallest district of Karnataka, located midway between Mysore and Mangalore.

2. What is the story about the Kodavu people’s descent?
Answer
It is believed that Kodavu people are of Arabic origin. It is said that some of Alexander’s armymen moved to south and settled there. Their costume, martial practices and marriage
rituals also point to the fact that they are from Arabic origin.

3. What are some of the things you now know about
(i) the people of Coorg?
(ii) the main crop of Coorg?
(iii) the sports it offers to tourists?
(iv) the animals you are likely to see in Coorg?
(v) its distance from Bangalore, and how to get there?
Answer
(i)The people of Coorg are fiercely independent. They are of Greek or Arabic descent. They have a tradition of hospitality. They enjoy recounting numerous tales of valour related to
their sons and fathers. Kodavus are the only people in India permitted to carry firearms without a license. The author has described the people of Coorg as a proud race of martial
men and beautiful women.

(ii) Coffee is the main crop of Coorg. The coffee estates stand tucked under tree canopies in prime corners.

(iii) The sports that Coorg offers to tourists are river rafting, canoeing, rappelling, rock climbing, mountain biking, and trekking.

(iv) The animals that one is likely to see in Coorg are birds, bees, butterflies, macaques, Malabar squirrels, langurs, loris, and wild elephants.

(v) The distance between Coorg and Bangalore is around 260 km. There are two routes to Coorg from Bangalore and both are of the same distance. The most frequented route is the
one via Mysore. The other route is via Neelamangal, Kunigal, and Chanrayanapatna.

4. Here are six sentences with some words in italics. Find phrases from the text that have the same meaning. (Look in the paragraphs indicated)
(i) During monsoons it rains so heavily that tourists do not visit Coorg. (para 2)
(ii) Some people say that Alexander’s army moved south along the coast and settled there.
(para 3)
(iii) The Coorg people are always ready to tell stories of their sons’ and fathers’ valour. (para
4)
(iv) Even people who normally lead an easy and slow life get smitten by the high-energy
adventure sports of Coorg. (para 6)
(v) The theory of the Arab origin is supported by the long coat with embroidered waist-belt
they wear. (para 3)
(vi) Macaques, Malabar squirrels observe you carefully from the tree canopy. (para 7)
Answer
(i) keep many visitors away
(ii) as one story goes
(iii)are more than willing to recount
(iv) the most laidback individuals become converts to
(v) draws support from
(vi) keep a watchful eye.
""",

        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//mijbil
class Mijbil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Oral Comprehension Check
      
1. What ‘experiment’ did Maxwell think Camusfearna would be suitable for?
Answer
Maxwell thought that he would keep an otter instead of a dog. Camusfearna, ringed by water a very short distance from its door, would be an eminently suitable spot for the experiment.

2. Why does he go to Basra? How long does he wait there, and why?
Answer
He went to Basra, to the Consultate-General, to collect and answer his mail from Europe. He had had to wait there for five days. To start with his mail didn’t reach on time. Then he tried
to make a telephone call. This incident is of those days when one had to book an international call 24 hrs in advance. The telephone line was not working properly on the first
day. Next day it was some public holiday so it was not working. Finally after a tortuous wait of five days his mail arrived.

3. How does he get the otter? Does he like it? Pick out the words that tell you this.
Answer
When he received his mail, he carried it to his bedroom to read. There, he saw two Arabs and beside them was a sack that twisted from time to time. They handed him a note from
his friend saying that he had sent him an otter. Yes, he liked it. We know this because he uses the term ‘otter fixation’ to refer to his feeling
towards the otter. He felt that this otter fixation or this strong attachment towards otters was something that was shared by most other people who had ever owned one.

4. Why was the otter named ‘Maxwell’s otter’?
Answer
The otter was of a race previously unknown to science and was at length named by zoologists Lutrogale perspicillata maxwelli or Maxwell’s otter.

5. Tick the right answer. In the beginning, the otter was
aloof and indifferent
friendly
hostile
Answer
In the beginning, the otter was aloof and indifferent.
6. What happened when Maxwell took Mijbil to the bathroom? What did it do two days after that?
Answer
When Maxwell took Mijbil to the bathroom, it went wild with joy in the water for half an hour. It was plunging and rolling in it, shooting up and down the length of the bathtub
underwater, and making enough slosh and splash for a hippo. Two days after that, it escaped from his bedroom to the bathroom. By the time he got
there, Mijbil was up on the end of the bathtub and fumbling at the chromium taps with its paws. In less than a minute, it had turned the tap far enough to produce some water and
after a moment, achieved the full flow.

Oral Comprehension Check

1. How was Mij to be transported to England?
Answer
Maxwell booked a flight to Paris and from there he would go on to London. The airline insisted that Mij should be packed in a box (not more than eighteen inches square) that was
to be placed on the floor, near his feet.

2. What did Mij do to the box?
Answer
The box was lined with metal sheet. Mij didn’t find it comfortable to be there so tried to escape. In its attempt to escape Mij tore into the metal lining of the box. As a result it hurt
itself and started bleeding.

Oral Comprehension Check

3. Why did Maxwell put the otter back in the box? How do you think he felt when he did this?
Answer
As there was no other way to carry Mij to London so the author had put it back into the box. He must have felt pity on the way the otter had hurt itself. Moreover, he must be worried as well.

4. Why does Maxwell say the airhostess was “the very queen of her kind”?
Answer
Maxwell said that the airhostess was “the very queen of her kind” because she was extremely friendly and helpful. He took her into his confidence about the incident with the
box. She suggested that he might prefer to have his pet on his knee. Hearing this, he developed a profound admiration for her, for she understood the pain of both the otter and its owner.

5. What happened when the box was opened?
Answer
When the box was opened, Mij went out of the box. He disappeared at a high speed down the aircraft. There were cries all around. A woman stood up on her seat screaming that
there was a rat. He saw Mij’s tail disappearing beneath the legs of an Indian passenger. He dived for it, but missed. The airhostess suggested him to be seated and that she would find
the otter. After a while, Mij had returned to him. It climbed on his knee and began to rub its nose on his face and neck.

Oral Comprehension Check

1. What game had Mij invented?
Answer
Mij had invented a game with ping-pong ball. He would put the ball at one end of a sloping lid and then grab it as it ran to the other end.

2. What are ‘compulsive habits’? What does Maxwell say are the compulsive habits of
(i) school children
(ii) Mij?
Answer
Compulsive habits are usually strange act or behaviour which a person does without clear
reason.
On their way to and from school, children make it a habit to place their feet exactly on the centre of each paving block. Similarly, Mij had made it a habit to jump on to the school wall
and go galloping all along its length of thirty yards.

3. What group of animals do otters belong to?
Answer
Otters belong to a comparatively small group of animals called Mustellines, shared by the badger, mongoose, weasel, stoat, mink and others.

4. What guesses did the Londoners make about what Mij was?
Answer
According to Maxwell, the average Londoner does not recognize an otter. The Londoners who saw Mij made different guesses about who Mij was. They guessed, among other things,
that it was a baby seal, a squirrel, a walrus, a hippo, a beaver, a bear cub, a leopard and a brontosaur.

Thinking about the Text

1. What things does Mij do which tell you that he is an intelligent, friendly and fun-loving
animal who needs love?
Answer
Mij was an intelligent animal. It invented it own game out of the ping-pong balls. It screwed the tap till water began to flow and then it would play and splash in the water. Though it
was aloof and indifferent in the beginning, it soon became very friendly. It formed a special attachment with Maxwell. It responded when Maxwell called out his name. It grew
desperate when Maxwell left it in a box and it got hurt while trying to come out of it. After Maxwell took it out, it clung to his feet. It was a fun-loving animal. It enjoyed playing all
kinds of games. It would play with a selection of toys, ping-pong balls, marbles, rubber fruit, and a terrapin shell. It required love and affection from Maxwell and it got that readily.

2. What are some of the things we come to know about otters from this text?
Answer
Otters belong to a comparatively small group of animals called Mustellines, shared by the badger, mongoose, weasel, stoat, mink and others. Maxwell’s otter was of a race previously
unknown to science and was at length named by zoologists Lutrogale perspicillata maxwelli or Maxwell’s otter. They are found in large numbers in marshes. They are often tamed by
the Arabs. It is characteristic of otters that every drop of water must be extended and spread about the place; a bowl must at once be overturned, or, if it would not be
overturned, be sat in and splashed in until it overflowed. For them, water must be kept on the move. Otters love playing various games, especially with a ball.

3. Why is Mij’s species now known to the world as Maxwell’s otter?
Answer
Maxwell’s otter was of a race previously unknown to science and was at length named by zoologistsLutrogale perspicillata maxwelli or Maxwell’s otter.
""",

        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//rides
class Rides extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Oral Comprehension Check
      
1. What was Valli’s favourite pastime?
Answer
Valli’s favourite pastime was to stand in the front doorway of her house and watch what was happening in the street outside.

2. What was a source of unending joy for Valli? What was her strongest desire?
Answer
A source of unending joy for Valli was the sight of the bus that travelled between her village and the nearest town, filled with a new set of passengers each time it passed through her
street. Her strongest desire was to ride on that bus.

3. What did Valli find out about the bus journey? How did she find out these details?
Answer
Valli found out that the town was six miles from her village. The fare was thirty paise one way. The trip to the town took forty-five minutes. On reaching the town, if she stayed in her
seat and paid another thirty paise, she could return home on the same bus. She found out these details by listening carefully to the conversations between her neighbours and the
people who regularly used the bus. She also gained information by asking them a few questions.

4. What do you think Valli was planning to do?
Answer
Valli was planning to travel on that bus.

Oral Comprehension Check

1. Why does the conductor call Valli ‘madam’?
Answer
Valli is trying to behave more mature than her age. She is trying to look overconfident and smart. The conductor is amused at her behaviour and in an effort to tease her calls her
‘madam’.
2. Why does Valli stand up on the seat? What does she see now?
Answer
Valli stood up on her seat because her view was cut off by a canvas blind that covered the lower part of her window. She stood up to look over the blind. She saw that the road was
very narrow, on one side of which there was the canal and beyond it were palm trees, grassland, distant mountains, and the blue sky. On the other side, there was a deep ditch
and many acres of green fields.

3. What does Valli tell the elderly man when he calls her a child?
Answer
When the elderly man called her a child, Valli told him that there was nobody on the bus who was a child. She had paid her fare of thirty paise like everyone else.

4. Why didn’t Valli want to make friends with the elderly woman?
Answer
The elderly woman was having big earlobes with bigger holes. She chewing betel nut and the betel juice was about to seep out of her mouth. She was giving a sight of unrefined
elderly lady. That is why Vaali did not want to make friends with her.

Oral Comprehension Check
1. How did Valli save up money for her first journey? Was it easy for her?
Answer
Valli saved every coin that came her way. She made great sacrifices by controlling her normal childish urges of having candies, toys and joyrides. This must have been difficult for
her. Kids find it very difficult to savour a candy or to enjoy a toy.

2. What did Valli see on her way that made her laugh?
Answer
Valli saw a young cow, whose tail was high in the air, running right in front of the bus in the middle of the road. The bus slowed and the driver sounded his horn loudly. However, the
more he honked, the more frightened the cow became and it kept running faster and faster, right in front of the bus. Valli found it so amusing that she had tears in her eyes. At last, the
cow moved off the road.

3. Why didn’t she get off the bus at the bus station?
Answer
She did not get off the bus at the bus station because she had to go back on that same bus. She took out another thirty paise from her pocket and handed the coins to the conductor.
She just wanted to ride on the bus.

4. Why didn’t Valli want to go to the stall and have a drink? What does this tell you about her?
Answer
Valli did not want to go to the stall and have a drink because she did not have any money for that. Even when the conductor offered her a cold drink free of charge, she refused firmly
and said that she only wanted her ticket. This shows that Valli had a lot of self will and pride. Possibly, she did not want to take anything for free, particularly from a stranger.

Thinking about the Text

1. What was Valli’s deepest desire? Find the words and phrases in the story that tell you this.
Answer
Valli’s deepest desire was to ride on the bus she saw everyday. The sentences in the story which depict this are as follows:
“Day after day she watched the bus, and gradually a tiny wish crept into her head and grew there: she wanted to ride on that bus, even if just once. This wish became stronger and
stronger, until it was an overwhelming desire.

2. How did Valli plan her bus ride? What did she find out about the bus, and how did she save up the fare?
Answer
Valli planned that she would take the one o’clock afternoon bus, reach the town at one forty-five, and be back home by about two forty-five. She found out that the town was six
miles from her village. The fare was thirty paise one way. The trip to the town took forty-five minutes. On reaching the town, if she stayed in her seat and paid another thirty paise, she
could return home on the same bus. She had carefully saved whatever stray coins came her way, resisting every temptation to buy peppermints, toys, balloons, and the like, and finally
she had saved sixty paise.

3. What kind of a person is Valli? To answer this question, pick out the following sentences
from the text and fill in the blanks. The words you fill in are the clues to your answer.
(i) “Stop the bus! Stop the bus!” And a tiny hand was raised ________________.

(ii) “Yes, I ____________ go to town,” said Valli, still standing outside the bus.

(iii) “There’s nobody here ____________,” she said haughtily. “I’ve paid my thirty paise like everyone else.”

(iv) “Never mind,” she said, “I can ___________. You don’t have to help me. “I’m not a child,
I tell you,” she said, _____________.

(v) “You needn’t bother about me. I _____________,” Valli said, turning her face toward the
window and staring out.

(vi) Then she turned to the conductor and said, “Well, sir, I hope ______________.”
Answer
(i) “Stop the bus! Stop the bus!” And a tiny hand was raised commandingly.
(ii) “Yes, I simply have to go to town,” said Valli, still standing outside the bus.
(iii) “There’s nobody here who’s a child,” she said haughtily. I’ve paid my thirty paise like
everyone else.”
(iv) “Never mind,” she said, “I can get on by myself. You don’t have to help me. “I’m not a
child, I tell you,” she said, irritably.
(v) “You needn’t bother about me. I can take care of myself,” Valli said, turning her face
toward the window and staring out.
(vi) Then she turned to the conductor and said, “Well, sir, I hope to see you again.”
For Valli, the bus journey probably symbolised the adult world. Like anyone else, she spent
her money to buy the ticket. She would have attained a great sense of pride and satisfaction in doing so. Therefore, though a child, Valli wanted to be treated as a grown-up on the bus.
She had a great sense of self respect which prevented her from taking anyone’s help. She
felt she was able to take care of herself very well, and was easily irritated when anyone
treated her as a child.

4. Why does the conductor refer to Valli as ‘madam’?
Answer
When the conductor stretched out his hand to help her get on the bus, Valli said commandingly that she could get on by herself, and that she did not require his help. She
did not act like a child, but as a grown-up girl and therefore, the conductor called her ‘madam’. When the elderly man called her a child and asked her to sit down on her seat, she
replied that nobody was a child on the bus. She kept stressing on the fact that she had paid her fare like everybody else and therefore, she should not be treated differently.

5. Find the lines in the text which tell you that Valli was enjoying her ride on the bus.
Answer
The following lines in the text show that Valli was enjoying her ride on the bus:
(i) “Valli devoured everything with her eyes.”
(ii) “On the one side there was the canal and, beyond it, palm trees, grassland, distant mountains, and the blue, blue sky. On the other side was a deep ditch and then acres and
acres of green fields − green, green, green, as far as the eye could see. Oh, it was all so wonderful!”

(iii) “Everyone laughed, and gradually Valli too joined in the laughter. Suddenly, Valli clapped her hands with glee.”

(iv) “Somehow this was very funny to Valli. She laughed and laughed until there were tears in her eyes.”

(v) “Valli wasn’t bored to the slightest and greeted everything with the same excitement she’d felt the first time.”

6. Why does Valli refuse to look out of the window on her way back?
Answer
Valli refused to look out of the window on her way back because she saw a young cow lying dead by the roadside, just where it had been struck by some fast-moving vehicle. It was the
same cow that was running in front of their bus, during their trip to the town. She was overcome with sadness. The memory of the dead cow haunted her and therefore, she
refused to look out of the window.

7. What does Valli mean when she says, “I was just agreeing with what you said about things happening without our knowledge.”
Answer
Valli’s mother said that many things happen around us, but we are usually unaware of them. Valli had gone on a bus ride to town, all alone, and had come back without any harm. She
did all this without the knowledge of her mother. Hence, she agreed with what her mother said.

8. The author describes the things that Valii sees from an eight-year-old’s point of view. Can you find evidence from the text for this statement?
Answer
The author has described the things that Valli saw from an eight-year-old’s point of view. She was fascinated by a bus. Watching the bus filled with a new set of people each time was
a source of unending joy for her. Her strongest desire was to ride the bus. She saved money by cutting on peppermints, toys, and balloons, and even resisting the temptation to ride the
merry-go-round at the fair. When the author describes the bus, the points he stresses on are the colour and look of the bus. It was a ‘new bus’, painted a ‘gleaming white’. The
overhead bars ‘shone like silver’. The seats were ‘soft and luxurious’. The descriptions that the author gives when Valli looked outside are also typical for an eight-year-old. The ‘blue,
blue sky’ and the ‘acres and acres of green fields − green, green, green’ show the enthusiasm of a kid on looking at different colours. Valli clapped her hands in glee on
watching a cow run right in front of the bus. She found it so funny that tears came into her eyes. On the other hand, she was overcome with sadness on her way back when she saw
the same cow lying dead. It had been a ‘lovable, beautiful creature’ and later it ‘looked so horrible’. The memory of the dead cow haunted her so much that she refused to look
outside the window. These are the typical reactions of a young child.
""",

        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//sermon
class Sermon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Thinking about the Text
      
1. When her son dies, Kisa Gotami goes from house to house. What does she ask for? Does she get it? Why not?
Answer
When Kisa Gotami’s son died, she went from house to house, asking if she could get some medicine that would cure her child.
No, she did not get it because her child was dead and no medicine could have brought him back to life.

2. Kisa Gotami again goes from house to house after she speaks with the Buddha. What does she ask for, the second time around? Does she get it? Why not?
Answer
When she met the Buddha, he asked her to get a handful of mustard seeds from a house where no one had lost a child, husband, parent, or friend. She went from house to house,
but could not get the mustard seeds because there was not a single house where no one had died in the family.

3. What does Kisa Gotami understand the second time that she failed to understand the first time? Was this what the Buddha wanted her to understand?
Answer
Kisa Gotami understood the second time that death is common to all and that she was being selfish in her grief. There was no house where some beloved had not died.
Yes, this was what the Buddha wanted her to understand. 

4. Why do you think Kisa Gotami understood this only the second time? In what way did the Buddha change her understanding?
Answer
Kisa Gotami understood that death is common to all and that she was being selfish in her grief. She understood this only the second time because it was then that she found that
there was not a single house where some beloved had not died. First time round, she was only thinking about her grief and was therefore asking for a
medicine that would cure her son. When she met the Buddha, he asked her to get a handful of mustard seeds from a house where no one had died. He did this purposely to make her
realize that there was not a single house where no beloved had died, and that death is natural. When she went to all the houses the second time, she felt dejected that she could
not gather the mustard seeds. Then, when she sat and thought about it, she realized that the fate of men is such that they live and die. Death is common to all. This was what the
Buddha had intended her to understand.

5. How do you usually understand the idea of ‘selfishness’? Do you agree with Kisa Gotami that she was being ‘selfish in her grief’?
Answer
Selfishness is preoccupation with I, me, and myself. Kisa Gotami was not in a position to think about other people’s grief. It is natural to feel sad over death of near and dear ones.
But most people carry on their next responsibility of performing proper last rites of the dead. People seldom carry a dead body in the hope of some miracle happening to that. The
family and the society always comes to be with those in hours of grief. But later on the life goes on. But Kisa Gotami was so engrossed in her sorrow that she forgot to think about live
members of her family and society.

Thinking about the Language
I. This text is written in an old-fashioned style, for it reports an incident more than two millennia old. Look for the following words and phrases in the text, and try to rephrase
them in more current language, based on how you understand them.
give thee medicine for thy child
Pray tell me
Kisa repaired to the Buddha
there was no house but someone had died in it
kinsmen
Mark!
Answer
1. Give you medicine for your child
2. Please tell me
3. Kisa went to the Buddha
4. There was no house where no one had died
5. Relatives
6. Listen
II. You know that we can combine sentences using words like and, or, but, yet and then.
But sometimes no such word seems appropriate. In such a case was can use a semicolon
(;) or a dash (−) to combine two clauses.
She has no interest in music; I doubt she will become a singer like her mother.
The second clause here gives the speaker’s opinion on the first clause.
Here is a sentence from the text that uses semicolons to combine clauses. Break up the
sentence into three simple sentences. Can you then say which has a better rhythm when
you read it, the single sentence using semicolons, or the three simple sentences?
For there is not any means by which those who have been born can avoid dying; after
reaching old age there is death; of such a nature are living beings.
Answer
The single sentence using semicolons has a better rhythm. This is because the three parts of
the sentence are connected to each other in their meanings. The second clause gives further
information on the first clause. The third clause is directly related to both the first and the
second. Their meanings are better conveyed when they are joined by semicolons"""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//prpssal
class Propsal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Thinking about the Play
      
1. What does Chubukov at first suspect that Lomov has come for? Is he sincere when he later says “And I’ve always loved you, my angel, as if you were my own son”? Find reasons
for your answer from the play.
Answer
At first, Chubukov suspected that Lomov had come to borrow money. He was not sincere when he told Lomov that he had always loved him and that he was like his own son. He had
decided that he would not give Lomov any money if he tried borrowing from him. If he truly meant what he had said, then he would not have thought of not giving him money. He said
so only because Lomov had come with the proposal to marry his daughter. 

2. Chubukov says of Natalya: “… as if she won’t consent! She’s in love; egad, she’s like a lovesick cat…” Would you agree? Find reasons for your answer.
Answer
Chubukov thought that Lomov was a good marriage prospect for his daughter. He had been waiting for this proposal. When Lomov expressed his doubt regarding Natalya’s consent to
the proposal, Chubukov immediately told him that she was in love with him. However, this was not true. Natalya did not seem to be in love with Lomov at any point in the play. It
seemed like she was more attached to her land, meadows and dogs than to Lomov. In fact, the way they kept getting into arguments about trivial matters suggests that neither Lomov
nor Natalya was in love with the other.

3. (i) Find all the words and expressions in the play that the characters use to speak about each other, and the accusations and insults they hurl at each other. (For example, Lomov in
the end calls Chubukov an intriguer; but earlier, Chubukov has himself called Lomov a “malicious, double faced intriguer.” Again, Lomov begins by describing Nayalya as “ an
excellent housekeeper, not bad-looking, well-educated.”)
Answer
(i) Several words and expressions have been used by the characters to describe each other.
Some of them are as follows:
Chubukov: grabber; intriguer; old rat; Jesuit
Natalya: a lovesick cat; an excellent housekeeper; not bad-looking, well-educated
Lomov: a good neighbour; a friend; impudent; pettifogger; a malicious, double-faced
intriguer; rascal; blind hen; turnip-ghost; a villain; a scarecrow; monster; the stuffed
sausage; the wizen-faced frump; boy; pup; milksop; fool
Thinking about the Language
1. This play has been translated into English from the Russian original. Are there any
expressions or ways of speaking that strike you as more Russian than English? For example
 would an adult man be addressed by an older man as my darling or my treasure in an
English play?
Read through the play carefully, and find expressions that you think are not used in
contemporary English, and contrast these with idiomatic modern English expressions that
also occur in the play.
3. Look up the following phrases in a dictionary to find out their meaning, and then use each
in a sentence of your own.
(i) You may take it that
(ii) He seems to be coming round
(iii) My foot’s gone to sleep
Answer
1. Expressions not used in contemporary English
1. “my darling”, “my beauty”, “my precious”, “my angel”, “my beloved” (here, an older man
is addressing an adult man)
2. “…and so on…” (here, it is used after a sentence in order to complete it)
3. “…and all that sort of thing.” (not explaining what it is, just leaving it as it is)
4. “…and all that.” (again leaving the sentence as it is)
5. “the scarecrow”, “the stuffed sausage”, “the wizen-faced frump” (In this way, they hurled
insults at each other)
6. “And how may you be getting on?” (Here, Lomov is asking Chubukov about his well-being)
Modern English expressions
1. “Madam”, “my heart”, “honoured Natalya Stepanovna” (used by Lomov for Natalya)
2. “Honoured Stepan Stepanovitch” (used by Lomov for Chubukov)
3. “I beg your pardon…”
4. “My dear fellow” (Chubukov addressing Lomov)
5. “malicious, double-faced intriguer”, “fool” (Chubukov insulting Lomov)
3.(i)You may take it that I am lying, but in fact it will help you in the long run.
(ii) He seems to be coming round after the trauma of his father’s death.
(iii) After the three hour long yoga session, my foot’s gone to sleep.

II. You mush have noticed that when we report someone’s exact words, we have to make
some changes in the sentence structure. In the following sentences fill in the blanks to list
the changes that have occurred in the above pairs of sentences. One has been done for
you.
1. To report a question, we use the reporting verb asked (as in Sentence Set 1).
2. To report a declaration, we use the reporting verb __________.
3. The adverb of place here changes to ___________.
4. When the verb in direct speech is in the present tense, the verb in reported speech is in
the ______________ tense (as in Sentence Set 3).
5. If the verb in direct speech is in the present continuous tense, the verb in reported speech
changes to ______________tense. For example, ____________ changes to was getting.
6. When the sentence in direct speech contains a word denoting respect, we add the adverb
_______________in the reporting clause (as in Sentence Set 1).
7. The pronouns I, me, our and mine, which are used in the first person in direct speech,
change to third person pronouns such as____________, ___________, ___________ or
__________in reported speech.
Answer
1. To report a question, we use the reporting verb asked.

2. To report a declaration, we use the reporting verb declared.

3. The adverb of place here changes to there.

4. When the verb in direct speech is in the present tense, the verb in reported speech is in the pasttense.

5. If the verb in direct speech is in the present continuous tense, the verb in reported speech changes to past continuous tense. For example, am getting changes to was getting.

6. When the sentence in direct speech contains a word denoting respect, we add the adverbrespectfully in the reporting clause.

7. The pronouns I, me, our and mine, which are used in the first person in direct speech, change to second person pronouns such as he/she, him/her, their or his/hers in reported
speech.

III. Here is an excerpt from an article from the Times of India dated 27 August 2006. Rewrite
it, changing the sentences in direct speech into reported speech. Leave the other sentences
unchanged.
“Why do you want to know my age? If people know I am so old, I won’t get work!” laughs
90-year-old A. K. Hangal, one of Hindi cinema’s most famous character actors. For his age,
he is rather energetic. “What’s the secret?” we ask. “My intake of everything is in small
quantities. And I walk a lot,” he replies. “I joined the industry when people retire. I was in
my 40s. So I don’t miss being called a star. I am still respected and given work, when actors
of my age are living in poverty and without work. I don’t have any complaints,” he says,
adding, “but yes, I have always been underpaid.” Recipient of the Padma Bhushan, Hangal
never hankered after money or materialistic gains. “No doubt I am content today, but
money is important. I was a fool not to understand the value of money earlier,” he regrets.

Answer
90-year-old A.K. Hangal, one of Hindi cinema’s most famous character actors, laughingly
asked why we wanted to know his age. If people knew he was that old, he would not get
work. For his age, he is rather energetic. We asked him what the secret was. He replied that
his intake of everything was in small quantities and he walked a lot. He said that he had
joined the industry when people retired. He had been in his 40s. So he did not miss being
called a star. He was still respected and given work, when actors of his age were living in
poverty and without work. He said he did not have any complaints, adding that he had
always been underpaid. Recipient of the Padma Bhushan, Hangal never hankered after
money or materialistic gains. He said that no doubt he was content at present, but money
was important. He said regretfully that he was a fool not to understand the value of money
before.
 """
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}

//second book
class Triump extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1. Why is Mrs Pumphrey worried about Tricki?
Answer
Mrs Pumphrey was worried and distraught because Tricki would not eat anything. It even refused its favourite dishes. It had bouts of vomiting. It spent all its time lying on the rug and
panting. It did not want to go for walks or do anything.

2. What does she do to help him? Is she wise in this?
Answer
She called the doctor to help Tricki. Yes, her decision was wise. The doctor suggested that Tricki should be hospitalised. She swooned and wailed, but let the dog go with the doctor.
Ultimately, the doctor was successful in curing Tricki.

3. Who does ‘I’ refer to in this story?
Answer
In this story, ‘I’ refers to the veterinary surgeon, Mr Herriot.

Read and Find out
1. Is the narrator as rich as Tricki’s mistress?
Answer
Though not clearly stated, there are instances in the story which suggest that the narrator is not as rich as Tricki’s mistress, Mrs Pumphrey.
While the narrator is able to provide Tricki with a warm loose box as a bed, at Mrs Pumphrey’s house, Tricki has a day bed, a night bed, cushions, toys, rubber rings, a
breakfast bowl, a lunch bowl, a supper bowl, a whole wardrobe of tweed coats and perhaps
many more things.
When he arrives to take the dog with him, Mrs Pumphrey has her entire staff at her disposal to transfer all of Tricki’s belongings to the doctor’s car.
On hearing from the doctor about Tricki’s gradual recovery, Mrs Pumphrey sends along two dozen eggs at a time, along with bottles of wine and brandy—all in order to help in Tricki’s
speedy recovery.
Finally, when she calls upon the narrator to take her recovered dog back home, she comes in a chauffer-driven “thirty feet of gleaming black metal” (an obvious reference to a limousine).
All these instances point to the fact that Mrs Pumphrey lived a luxurious life.

2. How does he treat the dog?
Answer
The doctor gave Tricki no food, but plenty of water for two days. Slowly, the dog started showing interest in his surroundings and began mixing with the other dogs at the surgery.
On the third day, the doctor saw Tricki licking the empty supper bowls of the other dogs. Next day, a separate bowl was kept for it and the doctor was pleased to note that Tricki had
run to eat its food with enthusiasm. From that day onwards, its progress was rapid. It did not require medicinal treatment of any kind and recovered quite well at the end.

3. Why is he tempted to keep Tricki on as a permanent guest?
Answer
Mrs Pumphrey had started bringing around eggs to build Tricki’s strength. Later, even bottles of wineand brandy began to arrive. The narrator and his partners started enjoying
the eggs, wine and brandy meant for Tricki. According to the narrator, they were days of deep content for them—starting with the extra egg in the morning, then the midday wine,
and finally finishing the day with brandy. This was the reason why the narrator was tempted to keep Tricki on as a permanent guest.

4. Why does Mrs Pumphrey think the dog’s recovery is “a triumph of surgery”?
Answer
Mrs Pumphrey thought that the dog’s recovery was “a triumph of surgery” because in two weeks, Tricki had recovered completely and had been transformed into a hard-muscled
animal. When Tricki saw her,it leaped into her lap and licked her face. She was so excited that tears started rolling out of her eyes. She declared Tricki’s recovery as a triumph of
surgery to express her happiness and gratitude towards the doctor.

Think about It

1. What kind of a person do you think the narrator, a veterinary surgeon, is? Would you say he is tactful as well as full of common sense?
Answer
I think the narrator; a veterinary surgeon is a very tactful person. He knows how to deal with people. He adjusts himself well to the circumstances. He immediately understand tricki’s
problem. Tricki doesn’t suffer from any sort of illness. The main cause of its illness is overfeeding. He takes the dog to his surgery. There he keeps it in natural environment. The
dog gets well under his supervision and natural environment of surgery.

2. Do you think Tricki was happy to go home? What do you think will happen now?
Answer
Yes, Tricki was very happy to go home. Tricki was also happy at the surgery. When the dog was brought into the surgery, it was ill. But in spite of it dog got cured in two days without
any medication. The proper diet and regular exercise helped a lot in its speedy recovery. The dog regained its best health and was no longer listless.
Now, I think same pampering will start again. Mrs. Pumphrey will take excessive care of the dog. There is no doubt it was her lone, but excess of anything is harmful.

3. Do you think this is a real-life episode, or mere fiction? Or is it a mixture of both?
Answer
This story could be a mixture of both: real life episode and a mere fiction. Mrs. Pumphrey is a rich lady and has a pet dog. It is because of her pampering that she overfeeds her dog
which results in its illness. Although she has good intention in her mind but excess of everything is bad. This episode can be treated as a fiction who do not take it seriously. It can
be called real life for those parents who take excessive care of their child.

Talk about It
1. This episode describes the silly behaviour of a rich woman who is foolishly indulgent, Perhaps because she is lonely. Do you think such people are merely silly, or can their action
cause harm to others?
Answer
This episode describes the silly behaviour of a rich woman who is foolishly. This may be because of her loneliness. They are ignorant about results of their actions. They show their
excessive lone and affection for someone without knowing the consequences. There is no doubt that their intentions are good, and don’t have any sort of ill-will, but they are not
aware their action can cause harm to others.

2. Do you think there are also parents like Mrs. Pumphrey?
Answer
Yes there are parents who are too much possessive about their kids. The sense of overindulgence can go in either way. There are examples of parents spoiling their child by
meeting each and every demand of the child. There are also examples of strict parents who put unnecessary pressure on their child for study and particular behaviour pattern."""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//thief
class Thief extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1. Who does ‘I’ refer to in this story?
Answer
In this story, ‘I’ refers to the thief.

2. What is he “a fairly successful hand” at?
Answer
He was “a fairly successful hand” at stealing and robbing people.

3. What does he get from Anil in return for his work?
Answer
When Hari asked Anil if he could work for him, Anil said that he could not pay him. Finally, the agreement was that if he would cook, then Anil would feed him. However, Anil soon
found out that he did not know how to cook. Therefore, he taught him how to cook and later, how to write his name. He promised he would teach him how to write whole
sentences and how to add numbers. Apart from this, when Hari went out to buy the day’s supplies, he would make a profit of a rupee a day.

Read and Find Out

1. How does the thief think Anil will react to the theft?
Answer
The thief thought that on discovering the theft, Anil’s face would show a touch of sadness. The sadness would not be for the loss of money, but for the loss of trust.

2. What does he say about the different reactions of people when they are robbed?
Answer
In his short career as a thief, he had made a study of men’s faces when they lost their goods. He said that the greedy men showed fear; the rich men showed anger and the poor men
showed acceptance.

3. Does Anil realize that he has been robbed?
Answer
Yes, Anil had realized that he had been robbed. He knew this probably because all the notes were wet and damp from the rain. However, he did not say anything to the thief and
behaved normally.

Think about It

1. What are Hari Singh’s reactions to the prospect of receiving an education? Do they change over time? (Hint: compare, for example, the thought: “I knew that once I could write
like an educated man there would be no limit to what I could achieve” with these later thoughts: ‘Whole sentences, I knew, cloud one day bring me more than a few hundred
rupees. It was a simple matter to steal − and sometimes just as simple to be caught. But to be a really big man, a clever and respected man, was something else.”) What makes him
return to Anil?
Answer
Hari Singh’s reactions to the prospect of receiving an education change over time. When he started living with Anil he wanted to be literate so that he could become a more cunning
cheat. Later on there is a change in his heart. He wants to earn respect in life. Probably he is influenced by the calm in Anil’s life. Although, both of them depend on irregular sources of
income, but Anil seems to be more satisfied. Hari Singh develops a desire to be part of the civilized society.

2. Why does not Anil hand the thief over to the police? Do you think most people would have done so? In what ways is Anil different from such employers?
Answer
Anil does not hand the thief over to the police because he has put the money back at its place. It shows that he realized his fault. He wants to make amends for his ways. He must
have felt guilty with himself. Anil wants to give him one more chance and therefore forgives him. No, in today’s world most people would not have done so. Although it must be done but
such sort of patience and compassion are rarely found now a days in this human world.

Talk about It

1. Do you think people like Anil and Hari Singh are found only in fiction, or are there such people in real life?
Answer
No, I don’t think that people like Anil and Hari Singh are found only in fiction. There are such people in real life also. Although such people are rare in today’s society. If one is caught
stealing, people will first beat him severely. Then he will be handed over to the police. It should be realized that a human being is bound to commit error. One chance for reforming
oneself must be given. This is the only way to bring anyone to right path. Punishing severely is not the only solution. Strictness can make them absolute criminal.

2. Do you think it a significant detail in the story that Anil is a struggling writer? Does this explain his behaviour in any way?
Answer
Hari Singh’s observation about Anil getting irregular income and Anil’s statement about his sale of a book to a publisher indicates that he is a struggling writer. He lives life according to
the flow of money he gets at a given time. When he gets the money he enjoys eating out with his friends. When he is having less money then he even doesn’t accept paying salary to
Hari Singh."""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//midnight
class Midnight extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1. How is Ausable different from other secret agents?
Answer
Ausable was different from other secret agents in more ways than one. He had a small room in the musty corridor of a gloomy French hotel. It was on the sixth and top floor and it was
scarcely the setting for a romantic adventure. He was extremely fat. Inspite of living in Paris for over twenty years, he spoke French and German only passably and had an American
accent. Instead of getting messages slipped into his hands by dark-eyed beauties, he got only a telephone call making an appointment. In these ways, he was different from the
conventional notion of a spy.

2. Who is Fowler and what is his first authentic thrill of the day?
Answer
Fowler was a writer and he had come to meet Ausable. Fowler’s first authentic thrill of the day came when he saw a man in Ausable’s room pointing a pistol towards Ausable and himself.

Read and Find Out

1. How has Max got in?
Answer
Max had got into the room with a passkey or a master key.

2. How does Ausable say he got in?
Answer
Ausable said that he thought Max had got into the room through the balcony. He said that it was the second time in a month that somebody had got into his room this way.

Think about It

1. “Ausable did not fit any description of a secret agent Fowler hand ever read.” What do secret agents in books and films look like, in your opinion? Discuss in groups or in class some
stories or movies featuring spies, detectives and secret agents, and compare their appearance with that of Ausable in this story. (You may mention characters from fiction in
languages other than English. In English fiction you may have come across Sherlock Holmes, Hercule Poirot, or Miss Marple. Have you watched any movies featuring James Bond?)

Answer
Secret agents in fiction are projected like ideal men, ‘Tall dark and handsome’. They are usually well built and keep have beautiful women for company. They would always smoke
pipe or cigar and do death defying stunts. James Bond is a very famous character by Ian Fleming. Movies based on James Bond show hi-tech gizmos whch assist the detective in
countering villains. There are some exceptions as well. There is a character named Feluda which was created by Satyajit Ray, the famous Bangla Filmmaker. Feluda was typical
bhadralok by appearance.

2. How does Ausable manage to make Max believe that there is a balcony attached to his room? Look back at his detailed description of it. What makes it a convincing story?
Answer
Ausable tells Max that someone entered his room through the balcony before also. He also told him that he had asked police to give him protection as he had some important papers
with him. On listening Max became nervous and just wanted to escape from police, as a result without noticing he jumped out of the window and fell down. Ausable’s ability to
think quickly and calmly, in a situation of panic makes it convincing.

3. Looking back at the story, when do you think Ausable thought up his plan for getting rid of Max? Do you think he had worked out his plan in detail right from the beginning? Or did
he make up a plan taking advantage of events as they happened?
Answer
No, I don’t think that he had worked out his plan in detail. He took advantages of the event as they happened. Ausable made a story of the balcony outside the room and as there was a
knock at the door, he told it would be police, all this events threatened Max. In such a hurry, he became restless and without seeing jumped out of the window.

Talk about It
1. In this story, Ausable shows great ‘presence of mind’ or the ability to think quickly and act calmly and wisely, in a situation of danger and surprise. Give examples from your own
experience, or narrate a story, which shows someone’s presence of mind.
Answer
This story is reference to the play ‘If I were you’. Gurrad was captured by a criminal and the criminal pointed gun towards him but he treated the criminal as a guest and trapped him in
his confidence. He achieved the criminal to run away as police is behind him. He told the criminal to run through the exit door, which was actually a cupboard door. The criminal exited through the door and was caught in the cupboard."""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//question
class Question extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1. What does Horace Danby like to collect?
Answer
Horace Danby liked to collect rare and expensive books.

2. Why does he steal every year?
Answer
He stole every year so that he could buy the rare and expensive books that he loved to collect. Each year, he planned carefully, stole enough to last twelve months, and secretly
bought the books, through an agent.

Read and Find Out

1. Who is speaking to Horace Danby?
Answer
A lady standing in the doorway was speaking to Horace Danby. She was young and pretty, and was dressed in red. She said she had come just in time, or else her family would have
been robbed by Horace. She, thus, pretended to be one of the members of the family living at Shotover Grange.

2. Who is the real culprit in the story?
Answer
The real culprit was the woman who pretended to be a member of the family living at Shotover Grange. She tricked Horace into believing her, and cleverly took away all the
jewels that were kept in the safe.

Think about It
1. Did you begin to suspect, before the end of the story, that the lady was not the person Horace Danby took her to be? If so, at what point did you realize this, and how?
Answer
Yes, one does begin to suspect before the end of the story that the lady was not the person Horace Danby took her to be. She was unusually calm on seeing Horace. This seemed
strange enough. When she did not call the police, and instead asked Horace to take out all the jewels from the safe, even if it meant breaking it open, it seemed suspicious. Moreover it also seemed unlikely that she would forget the numbers to open the safe. Therefore, it
was evident, before the story ended, that the lady was not the person Horace had taken her to be.

2. What are the subtle ways in which the lady manages to deceive Horace Danby into thinking she is the lady of the house? Why doesn’t Horace suspect that something is wrong?
Answer
Her confident walk, her act of touching up her make-up and the ease with which she picks cigarette from the right place are enough to deceive anybody. Horace was too frightened to
think properly so he didn’t suspect anything.

3. “Horace Danby was good and respectable − but not completely honest”. Why do you think this description is apt for Horace? Why can’t he be categorized as a typical thief?
Answer
“Horace Danby was good and respectable − but not completely honest”. This description is apt for Horace. He was about fifty years old. He robbed only from rich people, and his
purpose was to buy rare and expensive books with the money. He stole only once a year. The intention of buying books was good. However, the fact that he stole to achieve this end
showed that he was not completely honest. He cannot be categorized as a typical thief because he did not steal to eat or drink. He had a house. He made locks, had two people to
help him, and was successful in his business. He only stole enough money to buy the books. For a couple of days, he even kept his promise to the lady he met at Shotover Grange by not
stealing or planning any robbery.

4. Horace Danby was a meticulous planner but still he faltered. Where did he go wrong and why?
Answer
Horace Danby failed to get enough information about real occupants of the house. He seems to be too occupied with collecting information about house map, wiring and location
of valuable things. Although he was smart enough to know the dog’s actual name but overlooked getting identity of each and every occupants of the house. Once he was in
problem then probably his clever mind gave way to carelessness leading him to open the safe without wearing gloves.

Talk about It
1. Do you think Horace Danby was unfairly punished, or that he deserved what he got?

Answer
He deserved what he got. A crime is a crime no matter if it is committed a hundred times or just once.

2. Do intentions justify actions? Would you, like Horace Danby, do something wrong if you thought your ends justified the means? Do you think that there are situations in which it is
excusable to act less than honestly?
Answer
“Ends do not justify means”, this is a very old and time tested saying. For own benefit nobody should harm others. But this world doesn’t function on idealism. There are many
examples of people duping people for quick gains. These acts should be deplored and dealt with severely."""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//feet
class Feet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1. How did the invisible man first become visible?
Answer
Griffin was completely invisible until he happened to step in some mud, which caused him to leave footprints as he walked. His footprints were seen by two boys, who followed him as
long as the prints were visible. On getting rid of them, he went into a big London store to put on some warm clothes. After the store was shut, he got dressed by putting on shoes, an
overcoat and a wide-brimmed hat. This made him visible to the people who came to work at the store the next day.

2. Why was he wandering the streets?
Answer
Griffin was a lawless person. His landlord disliked him and tried to get rid of him. In revenge, he set fire to the house. He had to remove his clothes to get away without being seen. This
was why he had become a homeless wanderer—without clothes and money.

1. Why does Mrs Hall find the scientist eccentric?
Answer
The arrival of a stranger at an inn in winter was in itself a strange occurrence. In addition, the stranger had an uncommon appearance. In spite of Mrs Hall’s attempts to be friendly,
he would respond in a cold manner. He told her that he had no desire to talk, and that all he wanted was solitude. He did not wish to be disturbed in his work. For all these reasons she
regarded him as an eccentric scientist.

2. What curious episode occurs in the study?
Answer
A clergyman and his wife were awakened by noises in the study very early in the morning. Creeping downstairs, they heard the chink of money being taken from the clergyman’s desk.
He and his wife looked under the desk and behind the curtains, and even up the chimney. There wasn’t a sign of anybody. Yet the desk had been opened and the housekeeping
money was missing.

3. What other extraordinary things happen at the inn?
Answer
The landlord and his wife surprised to see the scientist’s door open. Usually it is shut and locked and he becomes furious if anyone enters his room. The opportunity seems too good
to be missed. They peep round the door, see nobody and decide to investigate. The bedclothes were cold, showing that the scientist must have been up for some time. All of a
sudden Mrs. Hall heard a sniff close to her ear. A moment later the hat on the bed post leapt up and dashed itself into her face. Then the bedroom chair became alive. Springing
into the air it charged straight at her, legs foremost. As she and her husband turned away in terror, the extraordinary chair pushed them both out of the room and then appeared to
slam and lock the door after them. Mrs. Hall almost fell down the stairs in hysterics. She was convinced that the room was haunted by sprits and the stranger had somehow caused these
to enter into the furniture.

1. “Griffin was rather a lawless person.” Comment.
Answer
It is rightly said that Griffin was a lawless person. He was not a law abiding citizen. A person who follows law and order of the country can not think of damaging other’s property. But
Griffin set fire to the house and became a homeless wanderer. He also robbed a shopkeeper of all the money he could find. He stole the housekeeping money from the clergyman’s
desk. Griffin also attacked Mrs. Hall when she entered his room. All these activities and instances prove that he was really a lawless person.

2. How would you assess Griffin as a scientist?
Answer
After repeated experiments, Griffin had discovered how to make the human body transparent. This was a big achievement. However, he misused his discovery for personal
gains and for hurting others. Thus, though he can be termed as a brilliant scientist, he was not a noble one."""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//secientist
class Scientist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1. How did a book become a turning point in Richard Ebright’s life?
Answer
Richard Ebright was interested in collecting butterflies. By the time he was in the second grade, he had collected all the twenty-five species of butterflies found around his home
town. This would have been the end of his butterfly collecting. But at this point his mother got him a book called “The Travels of Moarch X’. This book told him about the migration of
monarch butterflies to Central America. This book aroused his interest in Monarch butterflies and opened the world of science to him. This proved to be turning point in the
life of young Richard Ebright. He began to raise Monarch butterflies in the basement of his home, and study them in different stage of their development.

2. How did his mother help him?
Answer
Richard Ebright’s mother helped him by encouraging his interest in learning. She took him on trips, bought him telescopes, microscopes, cameras, mounting materials and other
equipments, and helped him in many other ways. If he did not have anything to do, she found things for him to learn. Even the book that became a turning point in his life was
given to him by his mother. Hence, it can be said his mother played a crucial role in the making of the scientist.

Read and Find Out

1. What lesson does Ebright learn when he does not win anything at a science fair?
Answer
Edbright realizes that mere display of something does not mean science. To win at a science fair he will have to do real experiments.

2. What experiments and projects does he then undertake?
Answer
He make experiments to find out what causes the viral disease that kills nearly all monarch caterpillars. He undertakes a project to test the theory that vicerory butterflies copy monarches to survive.

3. What are the qualities that go into the making of a scientist?
Answer
The author mentions three qualities that go into the making of a scientist—a first-rate mind, curiosity, and the will to win for the right reasons. Richard Ebright was a very intelligent
student. He was also a champion debater, a public speaker, a good canoeist and an expert photographer. He always gave that extra effort. He was competitive, but for the right
reasons. From the first he had a driving curiosity along with a bright mind; and it was this curiosity that ultimately led him to his theory about cell life.

Think about It

1. How can one become a scientist, an economist, a historian…? Does it simply involve
reading many books on the subject? Does it involve observing, thinking and doing experiments?
Answer
Reading books is just one aspect of learning. This is an exercise in information gathering. It is how your brain processes the information that affects the degree of learning. The first and
the foremost criteria to become a genius in one’s chosen field is to have great curiosity and unending hunger to discover more. Next criteria is a good sense of observation which helps
you to correlate your findings with what you see or experience in the real world. Experiments are must to test your findings against possible variables and in real life
situations. And last, but not the least criteria is an urge to work really hard on your area of interest.

2. You must have read about cells and DNA in your science books. Discuss Richard Ebright’s work in the light of what you have studied. If you get an opportunity to work like Richard
Ebright on projects and experiments, which field would you like to work on and why?
Answer
Ebrights’ work are directly related to Biology. Discovery of cell’s structure has helped scientific community to understand the way any organism functions and grows. This has
helped scientists to discover how disease causing organisms attack us and grow inside our body. This must have given them idea to counter a particular disease . DNA fingerprinting is
helping police to pinpoint the real culprit. This was not possible when DNA was discovered. Monarch butterflies present an amazing example of a tiny creature migrating thousands of
miles from North America to the rainforest of Amazon. Some day we can be in a position to develop as sturdy and reliable navigation system as that of the Monarch butterflies."""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//necklace
class Necklace extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1. What kind of a person is Mme Loisel − why is she always unhappy?
Answer
Mme. loisel is a dreamy woman. She gives much value to her dreams. She over-looks the realities of life. That is why, she is always unhappy because dreams can’t be true . She wants
them to be true.

2. What kind of a person is her husband?
Answer
Her husband is a very simple hearted person. He is an ordinary person. He is a caring husband. He wants to see Mme. Loisel happy.

Read and Find Out
1. What fresh problem now disturbs Mme Loisel?
Answer
After buying a pretty dress, Mme Loisel was bothered by yet another problem. She had no jewel to adorn herself with. She said she would have a poverty-stricken look. Her husband
suggested that she should wear some natural flowers. However, she refused and said that there was nothing more humiliating than to have a shabby air in the midst of rich women.

2. How is the problem solved?
Answer
Mme Loisel’s husband solved this problem. He told his wife to request her friend, Mme Forestier to lend her some jewels. When she went to Mme Forestier, the latter brought a
jewel case, so that Mme Loisel could choose whichever jewels she liked.

Read and Find Out

1. What do M. and Mme Loisel do next?
Answer
When M. and Mme Loisel realized that the necklace was missing, they tried finding out where she could have lost it. They concluded that it could have been dropped in the cab.
They did not know its number. Therefore, Loisel went over the track where they had walked. When he found nothing, he went to the police and to the cab offices. He even put an advertisement in the newspapers, offering a reward. He then asked Matilda to write a letter to Mme Forestier, explaining that she had broken the clasp of the necklace and would
get it repaired. This gave them time to find the necklace. However, they eventually decided to replace the necklace with a new one.

Thinking about the text

1. The course of the Loisels’ life changed due to the necklace. Comment.
Answer
The course of the Loisel’s life changed due to the necklace. After replacing the lost necklace with a new one, they had to replay all the money that they had borrowed to buy the new
necklace. They sent away the maid and changed their lodgings. They rented some rooms in an attic. Matilda learnt the odious work of a kitchen. She washed the dishes, soiled linen,
their clothes and dishcloths. She took down the refuse to the street each morning and brought up the water, stopping at each landing to catch her breath. She went to the
grocer’s, the butcher’s, and the fruiter’s, with her basket on her arm, shopping, haggling to save her money. Loisel worked in the evenings, putting the books of some merchants in
order. At night, he did copying at five sous a page. This lasted for ten years, and at the end of the said period, they were able to repay their lenders.

2. What was the cause of Matilda’s ruin? How could she have avoided it?
Answer
The cause of Matilda’s ruin was her dissatisfaction with whatever life offered her. She was always unhappy. She felt that she was born for all the delicacies and luxuries. She disliked
her circumstances. She could have avoided the ruin by being content with what she had.

3. What would have happened to Matilda if she had confessed to her friend that she had
lost her necklace?
Answer
If Matilda would have confessed to her friend that she had lost her necklace, she might have been in lesser trouble than what she faced after having replaced the necklace. Her friend
would definitely have been angry with her. Most probably, she would have asked Matilda to replace it. She would have given her the details from where she had bought the necklace
and how much it had cost her. Matilda would thus have known that the jewels in the necklace were not real diamonds. It would have cost her a far lesser amount to replace it.
Matilda would thus have saved herself and her husband all the trouble they went through."""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//driver
class Driver extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1. Why is the lawyer sent to New Mullion? What does he first think about the place?
Answer
The lawyer was sent to New Mullion to serve summons on Oliver Lutkins, who was needed as a witness in a law case.
He had expected the place to be a sweet and simple country village.

2. Who befriends him? Where does he take him?
Answer
The lawyer was befriended by a delivery man who introduced himself as Bill. He told him that he knew Lutkins and would help the lawyer in finding him. He took him to all the places
where Lutkins was seen or was known to hang out. He took the lawyer to Fritz’s shop, where Lutkins played a lot of poker; to Gustaff’s barber shop and then to Gray’s barber
shop; to the poolroom and several other places before finally taking him to Oliver’s mother’s farm. However, Oliver Lutkins was not found.

3. What does he say about Lutkins?
Answer
Bill told the lawyer that Lutkins was a hard fellow to catch. He was always up to something or the other. He owed money to many people, including Bill, and had never even paid
anybody a cent. He also said that Oliver played a lot of poker and was good at deceiving people.

1. What more does Bill say about Lutkins and his family?
Answer
Bill told the lawyer that he knew Lutkins’ mother. He said that she was a terror. He narrated an incident when he took a trunk to her once and she almost took his skin off because he
did not treat it like a box of eggs. He also said that she was about nine feet tall and four feet thick. She was very quick and could talk a lot. He said that Oliver must have heard that
somebody was chasing him and consequently, would have gone into hiding at his mother’s place.

2. Does the narrator serve the summons that day?
Answer
No. The narrator did not serve the summons that day.

3. Who is Lutkins?
Answer
The hack driver himself was Oliver Lutkins.

Think about It

1. When the lawyer reached New Mullion, did ‘Bill’ know that he was looking for Lutkins? When do you think Bill came up with his plan for fooling the lawyer?
Answer
Lutkins act of taking the lawyer for a ride clearly indicates that he is a very cunning person. It is his natural behaviour to not disclose his true identity to unknown persons. Moreover,
being a cheat as he is it seems his regular practice to dupe people who are newcomers. 

2. Lutkins openly takes the lawyer all over the village. How is it that no one lets out the secret? (Hint: Notice that the hack driver asks the lawyer to keep out of sight behind him
when they go into Fritz’s.)Can you find other such subtle ways in which Lutkins manipulates the tour?
Answer
Lutkin never allows the lawyer to the place where the imaginary Lutkins is supposed to be present at a given time. The way he weaves stories about Lutkin’s vagabond nature and the
way he scares the lawyer about Lutkin’s mother are great tools applied by Bill. 

3. Why do you think Lutkins’ neighbours were anxious to meet the lawyer?
Answer
Lutkin’s neighbours were not anxious to meet a person who could be easily duped. They wanted to enjoy the lawyer’s predicament.

4. After his first day’s experience with the hack driver the lawyer thinks of returning to New Mullion to practise law. Do you think he would have reconsidered this idea after his second
visit?
Answer
After his first day’s experience with the hack driver, the lawyer had considered returning to New Mullion to practise law. However, he realised during his second visit that he had been
literally taken for a ride by the hack driver (who himself was Lutkins). In this, Lutkins was helped by the townspeople. After becoming the laughing stock of the town, it is most likely
that the lawyer would have reconsidered his initial idea of working there.

5. Do you think the lawyer was gullible? How could he have avoided being taken for a ride?
Answer
The lawyer seems to be a simpleton and inexperienced person. He has yet to come to grips with the way the bad world functions. He could have done his homework better before
going to the village. He could have taken a photograph of Lutkin if available. Before relying on Bill he could have cross checked with other people as well. He could have avoided
sending Bill alone to search Lutkin."""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//bholi
class Bholi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1.Why is Bholi’s father worried about her?
Answer
Bholi’s father was worried about her as she had neither good looks nor intelligence. He did not know how he would find a suitable groom for her.

2. For what unusual reasons is Bholi sent to school?
Answer
Bholi is sent to school because there is little chance of her getting married, with her ugly face and lack of sense.

Read and Find Out
1. Does Bholi enjoy her first day at school?
Answer
Yes, Bholi enjoys her first day at school as she was glad to find so many girls almost of her own age present there. She hoped that one of these girls might become her friend.

2. Does she find her teacher different from the people at home?
Answer
Yes, she finds her teacher different from the people at home as the teacher was polite and this touched her heart.

Read and Find Out

1. Why do Bholi’s parents accept Bishamber’s marriage proposal?
Answer
Bholi’s parents accept Bishamber’s marriage proposal becsuse if they don’t accept it, she would not be married for the rest of her life.

2. Why does the marriage not take place?
Answer
The marriage does not take place because the groom demanded dowry.

Think about It

1. Bholi had many apprehensions about going to school. What made her feel that she was going to a better place than her home?
Answer
Bholi had many apprehensions about going to school. She remembered how their old cow, Lakshmi, had been turned out of the house and sold. When she got a clean dress, bathed
and oil was rubbed into her dry hair, only then she felt that she was going to a better place than her home.

2. How did Bholi’s teacher play an important role in changing the course of her life?
Answer
Bholi’s teacher played an important role in changing the course of her life. She was polite and friendly which touched her heart. She encouraged her every time and was affectionate
towards her and said to Bholi to put her fears of not able to speak aside. The teacher transformed her into a confident person who could read, write and speak clearly.

3. Why did Bholi at first agree to an unequal match? Why did she later reject the marriage? What does this tell us about her?
Answer
Bholi at first agreed to an unequal match because she was lucky to get a well-to-do bridegroom who owned a big shop, had a house of his own and had several thousand in the
bank. Moreover, he was not asking for any dowry. Bholi also heard her mother saying that he did not know about her pock-marks and her lack of sense. If the proposal was not accept
she might remain unmarried all her life. She later rejected the marriage because the bride groom demanded five thousand rupees as dowry. On seeing the father pleading and
humiliated she decided not to marry him.
This tells us that she has self respect and knows what is right or wrong and is able to take a wise decision.

4. Bholi’s real name is Sulekha. We are told this right at the beginning. But only in the last but one paragraph of the story is Bholi called Sulekha again. Why do you think she is called
Sulekha at that point in the story?
Answer
The world Bholi means a simpleton. Throughout the story she had been a simpleton hardly expressing her opinion. The word Sulekha means the person with beautiful sense of letters.
In this story this word has a larger meaning of being a literate, intelligent and mature individual. After her education Bholi has really changed to Sulekha and her assertion during
marriage is her announcement to the world that she is no more a Bholi but Sulekha."""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//book
class Book extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
      body: ListView(children: <Widget>[Text("""Read and Find Out
      
1. Why was the twentieth century called the ‘Era of the Book’?
Answer
The twentieth century was often called the Era of the Book. In those days, there were books about everything, from ant eaters to Zulus. Books taught people how to, and when to, and
where to, and why to. They illustrated, educated, punctuated, and even decorated.

2. Who tried to invade the earth in the twenty-first century?
Answer
The Martians tried to invade the earth in the twenty-first century.

1. What guesses are made by Think-Tank about the books found on earth?
Answer
Think-Tank makes guesses about the books found on earth was that they are sandwiches meant for communication later he says that they are for eye communication.

Think about It

1. Noodle avoids offending Think − Tank but at the same time he corrects his mistakes. How does he mange to do that?
Answer
Noodle avoided offending Think-Tank, but at the same time he corrected his mistakes. Whenever he had to say something contrary to what Think-Tank said, he would present his
thoughts by referring to them as being of no particular importance. In this way he would correct Think-Tank’s errors without making him feel that he was being corrected.

2. If you were in Noodle’s place, how would you handle Think −Tank’s mistakes?
Answer
If I were in Noodle’s place, I would have handled Think-Tank’s mistakes the same way as Noodle does.

3. Do you think books are being replaced by the electronic media? Can we do away with books altogether?
Answer
No,
4. Why are books referred to as a man’s best companion? Which is your favourite book and why? Write a paragraph about that book.
Answer
Books are known to be as man’s best companion. Human can make mentally and friendly relation with them. They can use them for knowledge as well as time pass purpose.
Choose your favourite book and wrote one para about that.
"""
        ,
        style: TextStyle(fontSize: 20.0, color: Colors.black),)

      ]
        ,
      ), backgroundColor: Colors.white,
    );
  }
}
//info about app and company
class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Info"),actions: <Widget>[
      IconButton(icon: Icon(Icons.home), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Route1()));})
    ],),body: Center(child: Container(decoration: BoxDecoration(color: Colors.amberAccent,shape: BoxShape.circle),height: 600,width: 700,child:
      Center(child: Text("Raj appies",style: TextStyle(fontSize: 35.0),),),
    ),)
      ,);
  }
}
//
class Ram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network('https://inc42.com/wp-content/uploads/2020/05/atmanirbhar-1200x900.jpg'),
    );
  }
}

class Ball extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking about the Poem

In pairs, attempt the following questions

1. Why does the poet say, “I would not intrude on him”? Why doesn’t he offer him money to buy another ball?

Answer

The poet wants the boy to experience the loss. He should learn that it is the part of life. That’s why the poet doesn’t want to interfere the boy and doesn’t want to offer him money to buy another ball.

2. “… staring down/All his young days into the harbor where/His ball went…” Do you think the boy has had the ball for a long time? Is it linked to the memories of days when he played with it?

Answer

Yes, it seems like the boy has had the ball for a long time. When it bounced into the water, all his memories of the days of childhood flashed in front of him. This led to a realisation that those moments would not come back, just like the ball. He can buy new balls and can similarly create new moments, but those that are gone would not return.

3. What does “in the world of possessions” mean?
Answer

In the world of possessions’ means people like to possess all sorts of things in the world. Money is external because it can buy only material objects; it cannot buy everything that one loses.

4. Do you think the boy has lost anything earlier? Pick out the words that suggest the answer.

Answer

No, it seems that the boy had not lost anything earlier. The words that suggest so are ‘senses first responsibility in a world of possessions’.

5. What does the poet say the boy is learning from the loss of the ball? Try to explain this in your own words.
Answer

The poet says that the boy is learning to cope up with the loss of the ball. He is experiencing grief and learning to grow up in this world of possessions. He learns that there are so many things in life that are to be lost and cannot be brought back. It is useless to feel sorrow for it.

        
        """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//

class Dust extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking about the Poem
        (Page 14)

Question 1.
What is a “dust of snow”? What does the poet say has changed his mood? How has the poet’s mood changed?
Answer:
The ‘dust of snow’ means the fine particles or flakes of snow. The sudden shower in the form of the dust of snow changed the poet’s mood. The poet’s mood changed from sad to happy. He felt refreshed and wanted to enjoy the rest of the day.

Question 2.
How does Frost present nature in this poem? The following questions may help you to think of an answer.
What are the birds that are usually named in poems? Do you think crow is often mentioned in poems? What images come to your mind when you think of a crow?
Again, what is ‘a hemlock tree’? Why doesn’t the poet write about more ‘beautiful’ tree such as a maple, or an oak, or a pine?
What do the ‘crow’ and ‘hemlock’ represent-joy or sorrow? What does the dust of snow that the crow shakes off a hemlock tree stand for?
Answer:
Frost presents nature in a very different manner in the poem,
Generally, poets take the birds and trees which are known for their beauty and good qualities like peacock, parrot, cuckoo, mynah and trees full of beautiful flowers and fruits, etc. But here Frost has taken a totally different approach. He chose a crow, which is not often used in poems. Crow is black in colour with very harsh voice and is believed to be a symbol of bad omen. Thinking of a crow brings very depressing and sorrowful pictures to our mind.
A hemlock tree is poisonous plant with small white flowers. The poet, Robert Frost, didn’t choose to use an oak, maple or pine tree. Instead, he chose the hemlock tree and left all the beautiful trees present in the world. Actually he did so to present his mood and feelings.
The crow and hemlock tree represent sorrow and depression felt by the poet in this materialistic world. The dust of snow is the symbol of natural joy and energy. The dust of snow that the crow shakes off a hemlock tree means passing through the sad and depressing moments the pdet is entering into the time full of joy and optimism.

Question 3.
Have there been tilnes when you felt depressed or hopeless? Have you experienced a similar moment that changed your mood that day?
Answer:
There have been innumerable times when I too have felt depressed and hopeless. Sometimes, such moments were aroused by other people’s behaviour and attitude and sometimes due to my own conduct. On one occasion when I was very upset. I went out for a walk. While walking in the park, I saw a girl playing with a puppy, embracing and feeding him. This little joy that they shared changed my mood and I felt very happy for the rest of the day. I also joined the two and played with them.
        """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//
class Fire extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking about the Poem
        (Page 15)

Question 1.
There are many ideas about how the world will ‘end’. Do you think the world will end some day? Have you ever thought what would happen if the Sun gets so hot that it ‘bursts’ or grows colder and colder?
Answer:
There are definitely many ideas about how the world will ‘end’. I do believe that the world will end some day as anything that has a beginning will have an end. This stands true for the world also, if the Sun got so hot that it burst, the whole of the Earth would perish immediately as no part of the Earth can bear the heat of that intensity. But if the Sun grew colder and colder, everything will come to an end as without sunlight, life will end.

Question 2.
For Frost, what do ‘fire’ and ‘ice’ stand for? Here are some ideas
Answer:
‘Fire’ stands for greed, avarice, lust, conflict and fury. ‘Ice’ stands for cruelty, intolerance, rigidity, insensitivity, coldness, indifference and hatred.
      
Question 3.
What is the rhyme scheme of the poem? How does it help in bringing out the contrasting ideas in the poem?
Answer:
The rhyme scheme of the poem is- a b a a b c b c b
This rhyme scheme helps in bringing out the contrasting ideas of ‘fire’ and ‘ice’ presented in the poem. The poet mentions that both fire and ice are probable ends of this world. He talks about how fire represents desire and can therefore be a cause of the end of the world. Frost also mentions ice in between to symbolise that the coldness and indifference towards one another will be enough to end the world. In the second stanza, he says that he knows of enough hate in the world to be sure that even destruction through ice . would be sufficient to bring about the end of the world.      
        """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//
class Tiger extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking About the Poem
        (Page 30)

Question 1.
Read the poem again and work in pairs or groups to do the following tasks.
1. Find the words that describe the movements and actions of the tiger in the cage and in the wild. Arrange them in two columns.
2. Find the words that describe the two places and arrange them in two columns.
Now try to share ideas about how the poet uses words and images to contrast the two situations.
Answer1:

In the Cage	||                   In the Wild
Stalks, Few steps of his cage, Quiet rage Locked in concrete cell, Stalking-the length of his cage Ignoring visitors. He hears the last voice Stares at the brilliant stars.||	Lurking in shadow, Sliding through long grass, Snarling around houses, Baring his white fangs, his claws, Terrorising the village.
Answer 2:

Cage	                        Wild
Few steps of his cage,	Shadow, Long grass, Water
Locked, Concrete cell,	hole, Plump deer,
Behind bars, Visitors,	Houses at jungle’s edge,
Patrolling cars	Village
Question 2.
Notice the use of a word repeated in lines such as these
1. On pads of velvet quiet, In his quiet rage.
2. And stares with his brilliant eyes At the brilliant stars.
What do you think is the effect of this repetition?
Answer:
This repetition is a poetic device used by the poet in order to increase the intensity of the tiger’s rage and his helpless silence. ‘Velvet quiet’ refers to the quiet velvet pads of the tiger, which cannot run or leap. They can only walk around the limited space in the cage. The use of ‘quiet rage’ symbolises the anger and ferocity that is building up inside the tiger as it wants to run out into the forest and attack a deer, but the rage is quiet because he is locked in the cage and is helpless. The repetition of ‘quiet’ has, thus, brought immense beauty to the poem. Similarly, the use of ‘brilliant’ for the tiger’s eyes as well as the stars also brings out the magnificence of these lines. The tiger stares at the brilliant stars with his brilliant eyes dreaming about how beautiful his life could be in the forest. The repetition thus, gives a wonderful effect to the poem.
   
Question 3.
Read the following two poems one about a tiger and the other about a panther. Then discuss:
Are zoos necessary for the protection or conservation of some species of animals?
Are they useful for educating the public?
Are there alternatives to zoos?
The Tiger
The tiger behind the bars of his cage growls,
The tiger behind the bars of his cage snarls,
The tiger behind the bars of his cage roars,
Then he thinks.
It would be nice not to be behind bars all
The time
Because they spoil my view
I wish I were wild, not on show.
But if I were wild, hunters might shoot me,
But if I were wild, food might poison me,
But if I were wild, water might drown me.
Then he stops thinking
And…
The tiger behind the bars of his cage growls,
The tiger behind the bars of his cage snarls,
The tiger behind the bars of his cage roars.
                                                             – Peter Niblett
The Panther
His vision, from the constantly passing bars,
has grown so weary that it cannot hold
anything else. It seems to him there are
a thousand bars; and behind the bars, no world.
As he paces in cramped circles, over and over,
the movement of his p0werful soft strides
is like a ritual dance around a centre
in which a mighty will stands paralysed.
Only at times, the curtain of the pupils
lifts, quietly. An image enters in,
rushes down through the tensed, arrested muscles,
plunges into the heart and is gone.
                                           – Rainer Maria Rilke
Answer:
Several species of animals are on the verge of
extinction. Even tigers and lions are not safe in the forest due to poaching that is done for trade, etc. Zoos are, thus, necessary for the protection or conservation of these species. Zoos are safe and can also be used to educate the public about the importance of wild animals and their role in maintaining the ecological ‘ balance. Wildlife sancturies, reserves and national parks are some alternatives to zoos. These not only help in the protection and conservation of these species, but also provide them with a natural habitat.   
        """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//
class Tell extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking about the Poem
(Page 45)

Question 1.
Does ‘Dyin’ really rhyme with ‘lion’ ? Can you say it in such a way that it does?
Answer:
No, ‘Dyin’ does not rhyme with ‘lion’. If we change the pronunciation of lion by speaking it as ‘lying’ then it may rhyme with the word ‘dyin’.

Question 2.
How does the poet suggest that you identify the lion and the tiger? When can you do so according to him?
Answer:
A lion is a large and tawny beast. A Bengal Tiger has black stripes on its yellow coat. A lion roars when it falls upon its prey, while a tiger attacks silently. We can identify the two while roaming in the jungle.
  
Question 3.
Do you think the words ‘lept’ and ‘lep’ in the third stanza are spelt correctly? Why does the poet spell them like this?
Answer:
The words ‘lept’ and ‘lep’ are not spelt correctly. The poet has spelt them like this in order to maintain the rhythm of the poem. The correct spelling of the words, ‘lept’ is leapt and ‘lep’ is leap. The poet has intentionally spelt them incorrectly to create a sense of humour.

Question 4.
Do you know what a ‘bearhug’ is? It’s a friendly and strong hug-such as bears are thought to give, as they attack you! Again, hyenas are thought to laugh and crocodiles to weep (‘crocodile tears’) as they swallow their victims. Are there similar expressions and popular ideas about wild animals in your own language (s)?
Answer:
A bearhug is when the bear hugs his prey tightly with both hands and presses him to death.
There are indeed similar expressions and popular ideas about wild animals in every language. For example, in Hindi, we say ‘Magarmach ke aansu aaana’ (Crocodile tears) ‘Haathi ke daant dikhane ke aur, khane ke aur’, ‘Ab pachtaye hot kya jab chidiya chug gai khet’, ‘Girgit ke tarah rang badalna’.


 
Question 5.
Look at the line ‘A novice might nonplus.” How would you write this ‘correctly’? Why is the poet’s ‘incorrect’ line better in the poem?
Answer:
The line “A novice might nonplus” can be written correctly as “A novice might be nonplussed”. However, the poet’s incorrect line is better in the poem as it maintains the rhyme scheme of the poem. By writing it incorrectly, ‘nonplus’ rhymes with ‘thus’.

 
Question 6.
Can you find other examples of poets taking liberties with language, either in English or in your own language? Can you find examples of humorous poems in your own language (s)?
Answer:
One can find plenty of examples in poetry where poets take liberties with language. This is called ‘poetic licence’. Poets take such liberties in order to create proper rhyming and rhythm. For example, in the following lines the word ‘prest’ is used instead of ‘pressed’ so that it may rhyme with ‘breast’.
A tree whose hungry mouth is prest Against the earth’s sweat flowing breast .

 
Question 7.
Much of the humour in the poem arisesfrom the way language is used. Although the ideas are funny as well. If there are particular lines in the poem that you especially like, share these lines with the class, speaking briefly about what it is about the ideas or the language that you like or find funny.
Answer:
The way the poet has used language and ideas in the poem is indeed humourous. The lines from the poem that appears to be funny are “A noble wild beast greets you”. The idea that a wild beast is going to welcome you is quite funny. The language in the line, “He’ll only lep and lep again” is also very humorous. The concept of ‘lep’ from the word ‘leopard’ generates humour.  
        """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//
class Amanda extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking about the Poem
        (Page 62)

Question 1.
How old do you think Amanda is? How do you know this?
Answer:
Amanda is about a 9-10 year old school going girl. She is being scolded for things typical for that particular age. Her parents are trying to inculcate in her good manners and etiquettes. Amanda is very innocent and immature.

Question 2.
Who do you think is speaking to her?
Answer:
One of her parents is speaking to her. Most probably it is her mother. In a traditional household mother is held responsible for the conduct of child. In this case also, the range of instructions suggests that the speaker is Amanda’s mother.

Question 3.
Why are stanzas 2, 4 and 6 given in parenthesis?
Answer:
Stanzas 2, 4 and 6 are given in parenthesis because they reflect the inner thoughts of Amanda. They can be taken as the reaction of the child for the instructions given in stanzas 1, 3 and 5. Here, there is an alternate sequence of scolding of the mother, and corresponding reaction to it given by the child. Also, parenthesis is used here to make the reading of ‘ the poem friendly

Question 4.
Who is the speaker in stanzas 2, 4 and 6? Do you think this speaker is listening to the speaker in stanzas 1, 3, 5 and 7?
Answer:
Speaker of the stanzas 2, 4 and 6 is the child, Amanda. No, she is not paying any attention to the speaker of stanzas 1, 3 and 5 as she is lost in a world of her own. Her imagination provides her an escape from her sorry reality.

Question 5.
What could Amanda do if she were a mermaid?
Answer:
Amanda wishes to be a mermaid so she could carelessly move along on a languid emerald sea. She just wishes to be carried away by the green sea waves slowly and gradually. Amanda longs for a place where she is all by herself as her happiness is not dependant on any other human being. Hence, she desires to be a mermaid because for a child, mermaid is a symbol of freedom and wonder.


Question 6.
Is Amanda an orphan? Why does she say so?
Answer:
No, Amanda is not an orphan, though she wishes to be one. She is so much stressed with the continuous nagging of her parents that she imagines herself to be better without them. The mere presence of her parents around her depresses her. Amanda is a little girl who seeks ‘golden’ silence and ‘sweet’ freedom. She wishes to roam around streets and draw patterns with her bare feet. Indeed it is horribly depressing that Amanda expects being an orphan.


Question 7.
Do you know the story of Rapunzel? Why does she want to be Rapunzel?
Answer:
Story of Rapunzel – Rapunzel’s story revolves around her life on a tower Rapunzel was made to live on a high tower by a witch. She eventually got used to living there. She was happy and satisfied with her life. Rapunzel had very long golden hair, using which the witch used to pay her a visit. The fate of Rapunzel took a turn when one day a prince came to meet her using her hair. The witch had punished both of them by separating them. Finally they met after a couple of years only to be united forever this time. Amanda Wishes to live like Rapunzel on a high tower away from everyone. She seeks peace and harmony. That is the reason Amanda wishes to be like Rapunzel. However, she also makes a point that in order to avoid being disturbed she would never let her hair down for anyone to climb to her. She needs no one to make her life happy.

 
Question 8.
What does the girl yearn for? What does this poem tell you about Amanda?
Answer:
A girl like Amanda yearns for freedom and space for herself. She is incapable to fulfil the expectations of her parents. Amanda is no less than a symbol for all the children who face similar fate irrespective of class, colour or nationality. Traditional societies demand a certain type of behaviour from the individuals and the training to produce such begins at a very young age. Parents ignore the innocence and understanding level of their children and thereby the young ends up killing their imagination and thoughts.

Question 9.
Read the last stanza. Do you think Amanda is sulking and is moody?
Answer:
No, Amanda is neither sulking nor moody. She is simply not interested enough in the nagging business of her parents. Amanda cares more about her imagination and thought process over the manners her parents are trying to inculcate into her.
        """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//
class Animals extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking About the Poem
        (Page 84)

Question 1.
Notice the use of the word ‘turn’ in the first line, “I think I could turn and live with animals…”. What is the poet turning from?
Answer:
In this line here, the poet wants to turn from human into an animal. This turning is symbolic of the poet’s detachment from human beings and their nature and his appreciation of the animal kind.

Question 2.
Mention three things that humans do and animals don’t.
Answer:
Animals do not cry and complain over their conditions. They do not. commit sins and therefore do not weep for them. They are also very satisfied creatures and have no desire to possess material things. Humans, on the contrary, complain all the time, commit all sorts of sins and are affected with the madness of owning things.

Question 3.
Do humans kneel to other humans who lived thousands of years ago? Discuss this in groups.
Answer:
Yes, humans kneel to other humans who lived thousands of years ago as it is a cultural tradition to do so. (Students can discuss their own culture with their classmates and share the rituals and traditions of their culture and also get to know about other cultural practices.)

Question 4.
What are the ‘tokens’ that the poet says he may have dropped long ago, and which the animals have kept for him? Discuss this in class .
(Hint Whitman belongs to the Romantic tradition that includes Rousseau and Wordsworth,which holds that civilisation has made humans false to their own true nature.
What could be the basic aspects of our nature as living beings that humans choose to ignore or deny?)
Answer:
The tokens mentioned in the poem mean the symbols of the true nature of human beings. These tokens are actually tokens of virtue such as containment, honesty, innocence and the likes of it.
         """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}//
class Tress extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking about the Poem
        (Page 100,101)

Question 1.
1. Find, in the first stanza, three things that cannot happen in a treeless forest.
2. What picture do these words create in your mind: “….. sun bury its feet in shadow…..1′? What could the poet mean by the sun’s ‘feet’?
Answer:
1. The three things that cannot happen in a treeless forest are – the sitting of a bird on trees, the hiding of insects and the sun burying its feet in the shadow of the forest.
2. The sun’s ‘feet’ refers to the rays of the sun that fall on the earth. When there is no shadow on the ground, because there are no trees, the rays fall directly on the ground. In a forest with trees, the shadow hides the sun rays and it seems that the sun is burying its feet in the shadow that fall from the trees.

Question 2.
1. Where are the trees in the poem? What do their roots, their leaves and their twigs do?
2. What does the poet compare their branches to?

Answer:
1. In the poem, the trees are trapped in the poet’s house. Their roots work all night to disengage themselves from the cracks in the veranda floor. The leaves try very hard to move towards the glass and put a lot of pressure on it so that it breaks, while the small twigs get stiff with exertion.
2. The poet compares the branches to newly discharged patients of a hospital. The large branches of the trees become cramped due to the roof above them, and when they get free they rush stumblingly to the outside world. While doing so, they look half-shocked like the patients, who wait for a long time to get out of the hospital.

Question 3.
1. How does the poet describe the moon:
(a) at the beginning of the third stanza, and
(b) at its end? What causes this change?
2.What happens to the house when the trees move out of it?
3. Why do you think the poet does not mention “the departure of the forest from the house” in her letters? (Could it be that we are often silent about important happenings that are so unexpected that they embarrass us? Think about this again when you answer the next set of questions.)
Answer:
1. At the beginning of the third stanza, the poet says that the full moon is shining in the open sky in the fresh night. At the end of the stanza, she describes that the moon breaks into pieces like a broken mirror and shines on the heads of the tallest oak trees. As the trees move outside, they cover some of the shine of the moon and it can be seen only in parts. This is why, it seems that the moon has broken into pieces.
2. When the trees move out of the house, the glasses break and the whispers of the trees vanish, leaving the house silent.
3. The poet hardly mentions about “the departure of the forest from the house” in her letters because it is humans, who did not care for nature in the first place. So, maybe, the poet now thinks that nobody would be interested in knowing about the efforts that the trees are making in order to set themselves free. If other men cared about the trees, they would not have destroyed them. It seems that this whole beauty of trees moving back to forests can be seen and felt only by the poet.

Question 4.
Now that you have read the poem in detail, we can begin to ask what the poem might mean. Here are two suggestions. Can you think of others?
1. Does the poem present a conflict between man and nature? Compare it with A Tiger in the Zoo. Is the poet suggesting that plants and trees, used for ‘interior decoration’ in cities while forests are cut down, are ‘imprisoned1, and need to ‘break out’?
2. On the other hand, Adrienne Rich has been known to use trees as a metaphor for human beings: this is a recurrent image in her poetry. What new meanings emerge from the poem if you take its trees to be symbolic of this particular meaning?
Answer:
Since a poem can have different meaning for different
readers and the poet can mean two different things using the same imagery, both these meanings can be justified in . context of the poem:
1. Yes, the poem presents a conflict between man and nature. Man has always caused much harm to nature, without realizing that it actually is a harm to the human race. Humans cut down forests for forest goods, which has destroyed a lot of natural beauty. By keeping trees inside walls and denying them their natural home, they are denying them their freedom. That is why, the trees want to move out. Similarly, in the poem A Tiger in the Zoo, the poet shows that animals feel bounded by cages and they want to get free and run wild in the open.
2. If trees have been used as a metaphor for human beings, then the poem would mean that like the trees, humans too want to break free of the boundaries that life puts on them. Modern life with all kinds of physical comfort has also brought a lot of moral downfall. Our lives have become busy and we have become selfish and greedy. Man would also want to enjoy the beauty of nature and go out in the open and be free, just like trees.
         """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//
class Fog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking About the Poem
        (Page 115)

Question 1.
1. What does Sandburg think the fog is like?
2. How does the fog come?
3. What does ‘it’ in the third line refer to? CBSE 2012
4. Does the poet actually say that the fog is like a cat? Find three things that tell us that the fog is like a cat. say that the fog is like a cat? Find three things that tell us that the fog is like a cat.
Answer:
1. Sandburg thinks that the fog is like a cat.
2. The fog comes silently like a cat on its small feet.
3. ‘It’ refers to fog.
4. The poet does not actually say that the fog is like a cat, but he uses the metaphor of cat for comparison.
Three things that tell us that the fog is like a cat are:

It comes silently like a cat on its small feet.
It looks over like a cat.
It sits on its haunches like a cat.

Question 2.
You know that a metaphor compares two things by transferring a feature of one thing to the other.
1. Find metaphors for the following words and complete the table below. Also try to say how they are alike. The first is done for you...

2. Think about a storm. Try to visualise the force of the storm, hear the sound of the storm, feel the power of the storm and the sudden calm that happens afterwards.
Write a poem about the storm comparing it with an animal.
Answer:
Do it yourself. 

Question 3.
Does this poem have a rhyme scheme? Poetry that does not have an obvious rhythm or rhyme is called ‘free verse’.
Answer:
This poem does not have a rhyme scheme as the sentences do not end with like sounds. There is no pattern of similarity in the sounds of the ending words of any of the sentences, therefore the poem is written in free verse.
    """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//
class Custard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Question 1.
Who are the characters in this poem? List them with their pet names.
Answer:
The characters in this poem are Belinda, a little girl, and her pets: a little black kitten, a little grey mouse, a little yellow dog, a little pet dragon and a pirate.

Characters	 Pet name
Kitten	       Ink
Mouse     	 Blink
Dog       	   Mustard
Dragon    	  Custard

Question 2.
Why did Custard cry for a nice safe cage? Why is the dragon called “cowardly dragon”?
Answer:
Custard cried for a nice safe cage because it was a coward and was scared very easily. It is called “cowardly dragon” because everyone else in the house is very brave while the dragon is the only one, who fears a lot and looks for a nice safe cage for himself. Belinda is as brave as a barrel full of bears, Ink and Blink can chase lions and Mustard is as brave as an angry tiger.
 
Question 3.
“Belinda tickled him, she tickled him unmerciful…” Why?
Answer:
Tickling always works on people, who are a little softer. So, Belinda tickled the dragon unmerciful as it worked a lot on him. Despite being a dragon, a tickling could disturb him and this showed his cowardice on which everyone laughed.

Question 4.
The poet has employed many poetic devices in the poem. For example “Clashed his tail like iron in a dungeon” – the poetic device here is a simile. Can you, with your partner, list some more such poetic devices used in the poem?
Answer:
In the poem, ‘The tale of Custard, the Dragon’, the poet has used a lot of poetic devices. Following are the devices used


 
1. Simile: mouth like a fireplace
2. Repetition: the repetitive use of the word ‘little’ in stanza 1.

Question 5.
Read stanza three again to know how the poet describes the appearance of the dragon.
Answer:
Do it yourself.


 
Question 6.
Can you find out the rhyme scheme of two or three stanzas of the poem?
Answer:
The rhyme scheme of the poem is ‘aabb’.

Question 7.
Writers use words to give us a picture or image without actually saying what they mean. Can you trace some images used in the poem?
Answer:
Writers always use such phrases and words that do not tell us directly about what they mean but always gives us an indication of the meaning. Such words or phrases are used to trigger our own imagination in painting the picture that they mean. Use of such images in the poem is the following: ‘mouth like a fireplace’, ‘chimney for a nose’, ‘brave as a barrel full of bears’, ‘brave as a tiger in a rage’, ‘went at the pirate like a robin at a worm’, etc.


 
Question 8.
Do you find ‘The Tale of Custard the Dragon’ to be a serious or a light-hearted poem? Give reasons to support your answer.
Answer:
‘The Tale of Custard the Dragon’ is a very light and funny poem meant to be enjoyed by everyone. The way the poem has been written with a fix rhyme scheme, makes it very easy and enjoyable to read. The poet has even used wrong spelling to maintain the rhyme scheme. The features of Belinda and her pets described in the poem make it quite funny. Belinda’s bravery has been compared to a barrel full of bears, a liquid substance. All the tiny creatures such as the kitten and the mouse have been shown so brave that they can scare a lion and the dog’s bravery is like a tiger’s rage. The biggest of them all, the dragon is the only one, who has been shown as a coward and soft being, who looks for a cage for himself, which is very ironic, hence making the poem funny.


 
Question 9.
This poem, in ballad form, tells a story. Have you come across any such modern song or lyric that tells a story? If you know one, tell it to the class. Collect such songs as a project.
Answer:
Do it yourself.        """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//
class Annne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.orangeAccent,title: Text('Solutions',style: TextStyle(fontSize: 20.0),),),
        body: ListView(children: <Widget>[Text("""
        Thinking About the Poem (page 141)

Question 1.
What does the young man mean by “great honey-coloued /Ramparts at your ear?” Why does he say that young men are “thrown into despair” by them?
Answer:
The young man in the poem praises the great honey-colored hair of Anne. Anne’s hair have been called rampart, meaning a wall. It is called so because they act as a wall, as they prevent young men from looking beyond those yellow hair and into her soul. Her hair are so attractive that young men cannot look at anything else. Anne’s yellow hair are so pretty that young men hopelessly fall in love with her. She is so pretty that everyone wants her, which cannot happen; hence, they are thrown into despair.

Question 2.
What colour is the young woman’s hair? What does she say she can change it td? Why would she want to do so?
Answer:
Anne s hair are yellow, like the colour of honey. She says that she can change it to black, brown or carrot; she means that she can change it to any colour she wants. Anne says so to show that outer beauty is changeable and not permanent or real. She wants young men to look in her soul and love her for her inner beauty. In order to do so, she needs to show them the superficiality of her external beauty.

Question 3.
Objects have qualities which make them desirable to others. Can you think of some objects (a car, a phone, a dress…) and say what qualities make one object more desirable than another? Imagine you were trying to sell an object: what qualities would you emphasise?
Answer:
People desire objects because of their qualities that suit their need. The things we consume, goods we use such as a car, a phone, a dress etc. physical qualities matter the most. Before buying anything, it is always considered that the object is durable and looks pretty. If I were to sell a dress, I would select the one that is very appealing to the eye and comfortable for the body. Then I would emphasise on the durability of the dress so that the customer feels that he/she is spending his/her money at the right place and in the right thing.

Question 4.
What about people? Do we love others because we like their qualities, whether physical or mental? Or is it possible to love someone “for themselves alone”? Are some people ‘more lovable’ than others? Discuss this question in pairs or in groups’, considering points like the following.
1. A parent or caregiver’s love for a newborn baby, for a mentally or physically challenged child, for a clever child or a prodigy
2. The public’s love for a film star, a sportsperson, a politician, or a social worker
3. Your love for a friend, or brother or sister
4. Your love for a pet, and the pet’s love for you.
Answer:
The students should attempt on their own.

Question 5.
You have perhaps concluded that people are not objects to be valued for their qualities or riches rather than for themselves. But elsewhere Yeats asks the question: How can we separate the dancer from the dance? Is it possible to separate ‘the person himself or herself’ from how the person looks, sounds, walks and so on? Think of how you or a friend or member of your family has changed over the years. Has your relationship also changed? In what way?
Answer:
The students should attempt on their own.
         """
          ,
          style: TextStyle(fontSize: 20.0, color: Colors.black),)

        ]
          ,
        ), backgroundColor: Colors.white,
    );
  }
}
//completed