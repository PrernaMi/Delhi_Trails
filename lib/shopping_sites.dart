import 'package:flutter/material.dart';
import 'package:tourist_app/shopping_UI.dart';
import 'package:tourist_app/shopping_ui_all_content.dart';

class ShoppingSites extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> nameImage = [
      {
        'name' : Text("Dilli Haat",
          style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ShoppingUi(
                mHeadImage: AllHeadImagesS.ImageList[0],
                mHeadImageName: HeadImageNameS.ImageName[0],
                mHeadImageInfo: HeadImageInfoS.detailedInfo[0],
              );
            }));
          },
          child: Image.asset("assets/images/shopping_image/img.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Dilli Haat is a group of stall cottages set up by the Government of Delhi....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_outline,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Janpath ",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ShoppingUi(
                mHeadImage: AllHeadImagesS.ImageList[1],
                mHeadImageName: HeadImageNameS.ImageName[1],
                mHeadImageInfo: HeadImageInfoS.detailedInfo[1],
              );
            }));
          },
          child: Image.asset("assets/images/shopping_image/img_1.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("One of the most crowded markets in all....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Khan Market",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ShoppingUi(
                mHeadImage: AllHeadImagesS.ImageList[2],
                mHeadImageName: HeadImageNameS.ImageName[2],
                mHeadImageInfo: HeadImageInfoS.detailedInfo[2],
              );
            }));
          },
          child: Image.asset("assets/images/shopping_image/img_2.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Khan Market is one of the many compound markets you can find in Delhi.....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Sarojini Nagar Market",
          style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ShoppingUi(
                mHeadImage: AllHeadImagesS.ImageList[3],
                mHeadImageName: HeadImageNameS.ImageName[3],
                mHeadImageInfo: HeadImageInfoS.detailedInfo[3],
              );
            }));
          },
          child: Image.asset("assets/images/shopping_image/img_3.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Instead of crowding at expensive stores that are...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Chandni Chowk",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ShoppingUi(
                mHeadImage: AllHeadImagesS.ImageList[4],
                mHeadImageName: HeadImageNameS.ImageName[4],
                mHeadImageInfo: HeadImageInfoS.detailedInfo[4],
              );;
            }));
          },
          child: Image.asset("assets/images/shopping_image/img_4.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("The fabled markets of Chandni Chowk have always been more of...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
      },
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
                child: Text("Explore more about shopping sites of New Delhi",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
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