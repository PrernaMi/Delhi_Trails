import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourist_app/historical_sites.dart';
import 'package:tourist_app/historial_all_page/qutub_minar.dart';

import 'all_sites.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> headImage = [
      {
        'image' : Image.asset("assets/images/cover_images/historical.png",fit: BoxFit.cover,),
        'name' : "Historical Sites",
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'image' : Image.asset("assets/images/cover_images/park.png",fit: BoxFit.cover,),
        'name' :  "Park and recreational areas",
        'icon' : Icon(Icons.star_outline_sharp,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'image' : Image.asset("assets/images/cover_images/religious.png",fit: BoxFit.cover,),
        'name' : "Religious sites",
        'icon' : Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'image' : Image.asset("assets/images/cover_images/shopping.png",fit: BoxFit.cover,),
        'name' : "Shopping centers and markets",
        'icon' : Icon(Icons.star_outline_sharp,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'image' : Image.asset("assets/images/cover_images/food.png",fit: BoxFit.cover,),
        'name' : "Foods and Dining",
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: TextField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined,size: 30,color: Colors.grey,),
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
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  gradient: LinearGradient(
                    colors: [Colors.grey.shade500,Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset("assets/images/Delhi_gif.gif",fit: BoxFit.cover,))
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: headImage.length,
                itemBuilder: (_,Index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return AllSites.allSites[Index];
                                }));
                              },
                              child: headImage[Index]['image'],
                            ),
                          )
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,color: Colors.white,),
                                  Text("Delhi",style: TextStyle(color: Colors.white),)
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
                                  Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
                                  Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
                                  Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
                                  headImage[Index]['icon'],
                                ],
                              ),
                              Text(headImage[Index]['name'],style: TextStyle(color: Colors.white),),
                            ],
                          )
                        )
                      ],
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
