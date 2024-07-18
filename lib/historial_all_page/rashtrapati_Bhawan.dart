import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourist_app/rating.dart';

class RashtrapatiBhawan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Image> images = [
      Image.asset("assets/images/rashtrapati_Bhawan/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/rashtrapati_Bhawan/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/rashtrapati_Bhawan/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/rashtrapati_Bhawan/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/rashtrapati_Bhawan/img_4.png",fit: BoxFit.cover,),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*--------------------------------------Search Bar-------------------------------------*/
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
            /*--------------------------------------Head Image-------------------------------------*/
            Padding(
              padding: EdgeInsets.only(bottom: 10,left: 20),
              child: SizedBox(
                height: 300,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: double.infinity),
                  child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (_,Index){
                      return SizedBox(
                        height: 300,
                        width: 450,
                        child: images[Index],
                      );
                    },
                  ),
                ),
              ),
            ),
            /*--------------------------------------Name of head Image-------------------------------------*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rashtrapati Bhawan",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Rating.rating[0],
                      Rating.rating[0],
                      Rating.rating[0],
                      Rating.rating[0],
                      Rating.rating[0],
                    ],
                  )
                ],
              ),
            ),
            /*--------------------------------------Divider-------------------------------------*/
            Container(
              height: 10,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 4,color: Colors.grey.shade600))
              ),
            ),
            /*--------------------------------------Overview-------------------------------------*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Text("Overview",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            /*--------------------------------------Thin Divider-------------------------------------*/
            Container(
              height: 10,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2,color: Colors.grey.shade600))
              ),
            ),
            /*--------------------------------------Detailed Info-------------------------------------*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: double.infinity),
                child: Text("Rastrapati Bhawan in Delhi is the official residence of the "
                    "president of India. Whether you are a political enthusiast or just an "
                    "interested citizen, you should definitely pay a visit to this place. \n"
                    "Take a walk through the Mughal Gardens or check out the museum to take "
                    "a look at the historical artefacts Spread across a whopping 330 acres, "
                    "the Rashtrapati Bhawan stands as a symbol of the nation’s power, history, "
                    "and values. Constructed by British architects Sir Edwin Lutyens and Herbert "
                    "Baker, the Rashtrapati Bhawan was originally known as the Viceroy’s House. \n"
                    "It then served as the residence of the British viceroy until India got "
                    "its freedom.The whole building is no less than an architectural masterpiece "
                    "that includes both Indian and Western elements. The design reflects grace and "
                    "elegance, with its gigantic central dome and the magnificent Mughal gardens "
                    "making it more appealing.So, next time you are in Delhi, make sure to take a "
                    "guided tour to visit this gigantic complex.",
                  style: TextStyle(color: Colors.white),),
              ),
            ),
            /*--------------------------------------Divider-------------------------------------*/
            Container(
              height: 10,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 4,color: Colors.grey.shade600))
              ),
            ),
            /*--------------------------------------Reviews-------------------------------------*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Text("Reviews",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            /*--------------------------------------Reviews Icon-------------------------------------*/
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 120,minWidth: 150),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("4.8",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                          Row(
                            children: [
                              Rating.rating[0],
                              Rating.rating[0],
                              Rating.rating[0],
                              Rating.rating[0],
                              Rating.rating[1],
                            ],
                          ),
                          Text("14 Review",style: TextStyle(color: Colors.grey.shade500,fontSize: 15),)
                        ],
                      )
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: 120,minWidth: 200),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("5 Star",style: TextStyle(color: Colors.grey.shade500,fontSize: 15),),
                                SizedBox(width: 10,),
                                Container(
                                  height: 15,
                                  width: 150,
                                  color: Color.fromARGB(255,252,208,69),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("4 Star",style: TextStyle(color: Colors.grey.shade500,fontSize: 15),),
                                SizedBox(width: 10,),
                                Stack(
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 130,
                                      color: Color.fromARGB(255,252,208,69),
                                    ),
                                    Container(
                                      height: 15,
                                      width: 150,
                                      color: Colors.grey.withOpacity(0.1),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("3 Star",style: TextStyle(color: Colors.grey.shade500,fontSize: 15),),
                                SizedBox(width: 10,),
                                Container(
                                  height: 15,
                                  width: 150,
                                  color: Colors.grey.withOpacity(0.1),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("2 Star",style: TextStyle(color: Colors.grey.shade500,fontSize: 15),),
                                SizedBox(width: 10,),
                                Container(
                                  height: 15,
                                  width: 150,
                                  color: Colors.grey.withOpacity(0.1),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("1 Star",style: TextStyle(color: Colors.grey.shade500,fontSize: 15),),
                                SizedBox(width: 10,),
                                Container(
                                  height: 15,
                                  width: 150,
                                  color: Colors.grey.withOpacity(0.1),
                                )
                              ],
                            )
                          ],
                        )
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}