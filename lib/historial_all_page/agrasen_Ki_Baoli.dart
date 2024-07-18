import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourist_app/rating.dart';

class AgrasenKiBaoli extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Image> images = [
      Image.asset("assets/images/agrasen_Ki_Baoli/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/agrasen_Ki_Baoli/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/agrasen_Ki_Baoli/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/agrasen_Ki_Baoli/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/agrasen_Ki_Baoli/img_4.png",fit: BoxFit.cover,),
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
                  Text("Agrasen Ki Baoli",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
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
                child: Text("Agrasen ki Baoli is a historical step well "
                    "located in the heart of Delhi. Surely it is an"
                    " architectural marvel which is like a hidden gem in "
                    "the middle of the bustling city. Historical records "
                    "do not provide any clarity on the origin of this place,"
                    " but it is said that this Maharaja Agrasen built this "
                    "step well and then it was rebuilt in the 14th century.\n"
                    "According to popular belief, this stepwell is named "
                    "after Maharaja Agrasen, a legendary king of the Agarwal"
                    " community. The baoli includes three stories and 108 "
                    "steps in total. It has managed to gain huge popularity"
                    " among locals and tourists in recent years.Apart from "
                    "being an architectural marvel, the place is also termed"
                    " mysterious with many haunted stories associated with it.\n"
                    " A lot of people complained about hearing strange noises "
                    "and some also said that they have seen ghosts as well. "
                    "This place has also been featured in some of the most "
                    "popular Bollywood movies such as Sultan and PK.",
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