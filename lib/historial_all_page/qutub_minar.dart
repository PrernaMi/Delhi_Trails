import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourist_app/rating.dart';

class QutubMinar extends StatelessWidget{
  // List<Image> mHeadImage;
  // String mHeadImageName;
  // Text mHeadImageInfo;
  //  QutubMinar({
  //    required this.mHeadImage,
  //    required this.mHeadImageName,
  //    required this.mHeadImageInfo,
  //  });


  @override
  Widget build(BuildContext context) {
    List<Image> images = [
      Image.asset("assets/images/qutub_minar/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/qutub_minar/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/qutub_minar/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/qutub_minar/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/qutub_minar/img_4.png",fit: BoxFit.cover,),
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
                  Text("Qutub Minar",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
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
                child: Text("When you are visiting Qutub Minar,"
                    "you are about to witness an architectural marvel"
                    " of the ancient ages.It is an iconic tower that is"
                    " a part of the vast Qutub complex. It stands as a reminder "
                    "of India’s past and the fusion of different arts and cultures. "
                    "This particular historical monument should be at the very top of your "
                    "list while you visit Delhi. \nQutub Minar is also a declared UNESCO World "
                    "Heritage Site, standing 72.5 m tall and being the tallest brick tower "
                    "in the world as well. The construction work of Qutub Minar began in 1192"
                    " by Qutb-ud-din Aibak who was the founder of the Delhi Sultanate. But the"
                    " construction was later finished by his successors and went through many "
                    "renovations.The five-story tower is made of red sandstone and marble and "
                    "includes 379 steps in total. \nThe complex also includes some other important"
                    " features, including Quwwat-ul-Islam mosque, one of the earliest mosques in"
                    " India. Qutub Minar is an important historical structure in India that attracts "
                    "both Indians and international tourists. \nit’s a very popular destination in "
                    "Delhi that you must visit.Another remarkable monument is the Iron Pillar, "
                    "famous for its rust-resistant power. The main material of this pillar is iron, "
                    "and it dates back to the 5th or 6th century, During the reign of the Gupta Empire. "
                    "The main feature of this pillar is that even after being exposed to different "
                    "weather conditions, it still has caught no rust at all. \nThis particular phenomenon "
                    "has fascinated researchers and scientists from all around the world.",
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
                            Container(
                              height: 15,
                              width: 150,
                              color: Colors.grey.withOpacity(0.1),
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