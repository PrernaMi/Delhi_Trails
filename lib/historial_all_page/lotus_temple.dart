import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourist_app/rating.dart';

class LotusTemple extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Image> images = [
      Image.asset("assets/images/lotus_temple/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/lotus_temple/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/lotus_temple/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/lotus_temple/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/lotus_temple/img_4.png",fit: BoxFit.cover,),
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
                  Text("Lotus Temple",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
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
                child: Text("The Lotus Temple, also known as the Baha’i House of"
                    " Worship, is a must-visit place in the capital. This unique "
                    "temple was designed by Canadian architect Fariborz Sahba and"
                    " finished in 1986. The structure resembles a lotus flower, with "
                    "twenty-seven marble-clad petals arranged in groups of three and nine"
                    " sides.The entire temple is primarily made of white marble to provide "
                    "a pristine appearance. \nThe surrounding area also includes nine ponds "
                    "and gardens. You can take part in a variety of activities like attending "
                    "classes or participating in devotional meetings while visiting the temple."
                    "You can pray or meditate while sitting in the temple, there is no"
                    " chanting or other such rituals followed, you just have to maintain silence"
                    " while you are there. \nHundreds of tourists come to visit the Lotus Temple "
                    "every year to witness the spirituality and outstanding architecture."
                    " However, photography is not allowed inside the temple, so you can take"
                    " pictures from the outside.",
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