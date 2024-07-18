import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:tourist_app/historial_all_page/india_gate.dart';
import 'package:tourist_app/historial_all_page/jantar_Mantar.dart';
import 'package:tourist_app/historial_all_page/lotus_temple.dart';
import 'package:tourist_app/historial_all_page/qutub_minar.dart';
import 'package:tourist_app/historial_all_page/red_fort.dart';
import 'package:tourist_app/historical_all_content.dart';
import 'historial_all_page/agrasen_Ki_Baoli.dart';
import 'historial_all_page/mehrauli_Archaeological_Park.dart';
import 'historial_all_page/rashtrapati_Bhawan.dart';

class Historical extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    List<Map<String,dynamic>> nameImage = [
      {
        'name' : Text("Qutub Complex",
          style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return QutubMinar();
              //   QutubMinar(
              //   mHeadImage: AllHeadImages.ImageList[0],
              //   mHeadImageName: HeadImageName.ImageName[0],
              //   mHeadImageInfo: HeadImageInfo.detailedInfo[0],
              // );
            }));
          },
          child: Image.asset("assets/images/historial_image/img.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Qutub Minar is also a declared UNESCO World Heritage Site....",style: TextStyle(
          color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_outline,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Red Fort",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return RedFort();
            }));
          },
          child: Image.asset("assets/images/historial_image/img_1.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("The Red Fort built during the Mughal era still stands as a magnificent....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("India Gate",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return IndiaGate();
            }));
          },
          child: Image.asset("assets/images/historial_image/img_2.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("India Gate was built in honour of the soldiers who sacrificed their lives during...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Lotus Temple",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return LotusTemple();
            }));
          },
          child: Image.asset("assets/images/historial_image/img_3.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("The Lotus Temple, also known as the Baha’i House of Worship, is a must-visit...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Jantar Mantar",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return JantarMantar();
            }));
          },
          child: Image.asset("assets/images/historial_image/img_4.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Jantar Mantar acts as a testament to the architectural...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Agrasen Ki Baoli",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AgrasenKiBaoli();
            }));
          },
          child: Image.asset("assets/images/historial_image/img_5.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Agrasen ki Baoli is a historical step well located in the heart...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Rashtrapati Bhawan",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return RashtrapatiBhawan();
            }));
          },
          child: Image.asset("assets/images/historial_image/img_7.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Rastrapati Bhawan in Delhi is the official residence of the president of....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_outline,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Mehrauli Archaeological Park",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MehrauliArchaeologicalPark();
            }));
          },
          child: Image.asset("assets/images/historial_image/img_8.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Mehrauli Archaeological Park in Delhi is a...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      }
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20,bottom: 7,top: 15),
              child: TextField(
                style: TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    prefixIcon: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Icon(Icons.arrow_back,size: 30,color: Colors.grey,),
                    ),
                    hintText: "Explore more....",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.elliptical(50, 50))
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Text("Trending attractions in New Delhi",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10,left: 20),
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: nameImage.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_,Index){
                    return SizedBox(
                    height: 300,
                    width: 450,
                    child: nameImage[Index]['image']
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Text("Explore more about historical sites of New Delhi",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: double.infinity),
              child: GridView.builder(
                itemCount: nameImage.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    childAspectRatio: 7/11,
                  ),
                  itemBuilder: (_,Index){
                    return Padding(
                      padding: EdgeInsets.all(20),
                      child:Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(9),
                                child: nameImage[Index]['image'],
                              )
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                nameImage[Index]['name'],
                                nameImage[Index]['summary'],
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
                                    Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
                                    Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
                                    Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
                                    nameImage[Index]['icon'],
                                  ],
                                )
                              ],
                            )
                          ),
                        ],
                      )
                    );
                  }
              ),
            )
          ],
        ),
      )
    );
  }

}