import 'package:flutter/material.dart';
import 'package:tourist_app/food_UI.dart';
import 'package:tourist_app/food_all_content.dart';

class FoodSites extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> nameImage = [
      {
        'name' : Text("Old Delhi",
          style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return FoodUI(
                mHeadImage: AllHeadImagesF.ImageList[0],
                mHeadImageName: HeadImageNameF.ImageName[0],
                mHeadImageInfo: HeadImageInfoF.detailedInfo[0],
              );
            }));
          },
          child: Image.asset("assets/images/food_images/img.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Old Delhi, the historical heart of the city, is renowned for its rich....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_outline,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Gali Paranthe Wali",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return FoodUI(
                mHeadImage: AllHeadImagesF.ImageList[1],
                mHeadImageName: HeadImageNameF.ImageName[1],
                mHeadImageInfo: HeadImageInfoF.detailedInfo[1],
              );
            }));
          },
          child: Image.asset("assets/images/food_images/img_1.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Gali Paranthe Wali, located in Chandni Chowk, Delhi, is a narrow street....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Pandara Road",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return FoodUI(
                mHeadImage: AllHeadImagesF.ImageList[2],
                mHeadImageName: HeadImageNameF.ImageName[2],
                mHeadImageInfo: HeadImageInfoF.detailedInfo[2],
              );
            }));
          },
          child: Image.asset("assets/images/food_images/img_3.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Pandara Road in Delhi is renowned for its vibrant and.....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("South Campus",
          style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return FoodUI(
                mHeadImage: AllHeadImagesF.ImageList[3],
                mHeadImageName: HeadImageNameF.ImageName[3],
                mHeadImageInfo: HeadImageInfoF.detailedInfo[3],
              );
            }));
          },
          child: Image.asset("assets/images/food_images/img_4.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("South Campus at many universities is often known for...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Hudson Lane",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return FoodUI(
                mHeadImage: AllHeadImagesF.ImageList[4],
                mHeadImageName: HeadImageNameF.ImageName[4],
                mHeadImageInfo: HeadImageInfoF.detailedInfo[4],
              );;
            }));
          },
          child: Image.asset("assets/images/food_images/img_5.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Hudson Lane, located in the heart of North Delhi near the...",style: TextStyle(
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
                child: Text("Explore more about food sites of New Delhi",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
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