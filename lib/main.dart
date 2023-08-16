import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

  Widget titleSection = Container(
    margin: const EdgeInsets.all(8),
    child: Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Ma pizza",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              padding: const EdgeInsets.only(bottom: 8),
            ),
            Text(
              "Ma pizza facile",
              style: TextStyle(color: Colors.grey[500], fontSize: 15),
            ),
          ],
        )),
        Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        Text("55")
      ],
    ),
  );


  Widget buttonSection = Container(
                 padding: EdgeInsets.all(8),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildBottomColmun(Colors.blue,Icons.comment_bank, "Comment"),
                    _buildBottomColmun(Colors.black,Icons.share, "Share")
                  ],
              ),
              );

  Widget descriptionSection = Container(
       padding: EdgeInsets.all(32),
      child: Text("Faire cuire la pizza dans le four a 500 degre puis rajouter \n les element  suivants comme la tomate en conservee pouis les   \n legume pouis le fromeage, pour finir  ajouer les sardines"
      , softWrap: true,),
  );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            // TRY THIS: Try changing the color here to a specific color (to
            // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
            // change color while the other colors stay the same.
            backgroundColor: Colors.blue,
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(
              "Mes recette",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              
              titleSection,
              buttonSection,
              descriptionSection
              
              ],
          )),
    );
  }


 Column _buildBottomColmun( Color color, IconData icon,String lablel){
    return Column(
       mainAxisAlignment: MainAxisAlignment.center, //centrer les elements
      children: [
             Container(
              padding: const EdgeInsets.only(bottom: 8),
              child:Icon(icon, color: color),
             ),
            
            Text(lablel, style: TextStyle(
               fontSize: 14,
               fontWeight: FontWeight.w400,
               color: color
            ),)
              
    ],);
 }

}
