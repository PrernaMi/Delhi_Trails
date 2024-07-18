import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourist_app/rating.dart';

class RedFort extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Image> images = [
      Image.asset("assets/images/red_fort/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/red_fort/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/red_fort/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/red_fort/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/red_fort/img_4.png",fit: BoxFit.cover,),
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
                  Text("Red Fort",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
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
                child: Text("The Red Fort built during the Mughal era still stands as a magnificent testament to"
                    " the architectural brilliance of that time. This fort, too, is a declared UNESCO world heritage "
                    "site that attracts many visitors every year.\nThe fifth Mughal "
                    "emperor Shah Jahan constructed the Red Fort in the middle of the "
                    "17th century. It served as the main palace of the Mughal emperors "
                    "for nearly 200 years. The fort is named after the red sandstone used "
                    "in its construction.The red fort includes a huge complex with impressive"
                    " walls, high gateways, multiple pavilions, gardens, and a courtyard. "
                    "The Lahori Gate is the main entrance of the red fort and leads you to "
                    "Chatta Chowk, a bustling market inside the fort complex. \nThen there is "
                    "the Delhi Gate, or Dilli Darwaza, where Aurangzeb was held captive "
                    "during the last days of his life.This fort also has important structures,"
                    " such as Diwan-i-Aam, Diwan-i-Khas, Khas Mahal, Rang Mahal, etc which "
                    "have outstanding artwork and craftsmanship of the Mughal era. \nThe fort "
                    "stand as a testimonial to how glorious those days were when the Mughal "
                    "Empire ruled India.The red fort stands as a captivating historical "
                    "structure in Delhi and also a national pride of India. \nIt’s one of "
                    "the prominent historical places to visit in Delhi.",
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
                          Text("5.0",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                          Row(
                            children: [
                              Rating.rating[0],
                              Rating.rating[0],
                              Rating.rating[0],
                              Rating.rating[0],
                              Rating.rating[0],
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
                                      width: 150,
                                      color: Colors.grey.withOpacity(0.1),
                                    ),
                                    Container(
                                      height: 15,
                                      width: 100,
                                      color: Color.fromARGB(255,252,208,69),
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