import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
   String recettePizza = """
Ingrédients :\n
- 1 pâte à pizza préparée (achetée ou faite maison)\n
- 1/2 tasse de sauce tomate\n
- 1 1/2 tasse de fromage mozzarella râpé\n
- Vos garnitures préférées (tranches de pepperoni, champignons, poivrons, oignons, olives, etc.)\n
- 1 cuillère à soupe d'huile d'olive\n
- 1/2 cuillère à café d'origan séché\n
- 1/4 cuillère à café de flocons de piment rouge (facultatif)\n
- Sel et poivre au goût\n\n
Instructions :\n
1. Préchauffez le four à 220°C (425°F).\n
2. Étalez la pâte à pizza sur une surface légèrement farinée jusqu'à obtenir l'épaisseur désirée.\n
3. Transférez la pâte sur une plaque de cuisson légèrement huilée ou recouverte de papier parchemin.\n
4. Étalez la sauce tomate sur la pâte, en laissant une bordure libre d'environ 1 cm.\n
5. Saupoudrez la moitié du fromage mozzarella sur la sauce tomate.\n
6. Ajoutez vos garnitures préférées sur le fromage.\n
7. Saupoudrez le reste du fromage mozzarella sur les garnitures.\n
8. Arrosez d'huile d'olive sur le dessus de la pizza.\n
9. Saupoudrez d'origan séché, de flocons de piment rouge (si désiré), de sel et de poivre.\n
10. Placez la pizza au four préchauffé et faites cuire pendant environ 12-15 minutes, ou jusqu'à ce que la croûte soit dorée et croustillante et que le fromage soit fondu et légèrement doré.\n
11. Retirez la pizza du four et laissez-la reposer pendant quelques minutes avant de la découper en parts.\n
12. Servez chaud et dégustez votre délicieuse pizza faite maison !\n\n
Bonne dégustation ! 🍕
""";
  Widget descriptionSection = Container(
       padding: EdgeInsets.all(32),
      child: Text(recettePizza
      , softWrap: true,),
  );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //enlever la banniere
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
          body: ListView(
             //ListView pour scroller 
            children: [
 //           
              FadeInImage.memoryNetwork(
               placeholder: kTransparentImage,
               image:'https://img.freepik.com/photos-gratuite/savoureuse-recette-italienne-pizza-traditionnelle-faite-maison_24972-2141.jpg?w=1380&t=st=1692287296~exp=1692287896~hmac=16b471f88b03c89c5f4019289bf6591001312d96713d33a455dc96e8e0302926',
               width: 600,
               height: 240,
               fit: BoxFit.cover,
              ),
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
