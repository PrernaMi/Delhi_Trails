import 'package:flutter/material.dart';
import 'package:tourist_app/religious_UI_1.dart';
import 'package:tourist_app/religious_all_content.dart';
import 'historical_all_content.dart';

class ReligiousSites extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> nameImage = [
      {
        'name' : Text("Swaminarayan Akshardham",
          style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ReligiousUi(
                mHeadImage: AllHeadImagesR.ImageList[0],
                mHeadImageName: HeadImageNameR.ImageName[0],
                mHeadImageInfo: HeadImageInfoR.detailedInfo[0],
              );
            }));
          },
          child: Image.asset("assets/images/religious_image/img.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Akshardham, also known as the Swaminarayan....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_outline,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Gurudwara Bangla Sahib",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ReligiousUi(
                mHeadImage: AllHeadImagesR.ImageList[1],
                mHeadImageName: HeadImageNameR.ImageName[1],
                mHeadImageInfo: HeadImageInfoR.detailedInfo[1],
              );
            }));
          },
          child: Image.asset("assets/images/religious_image/img_1.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Gurudwara Bangla Sahib is one of the most....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("ISKCON Temple",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ReligiousUi(
                mHeadImage: AllHeadImagesR.ImageList[2],
                mHeadImageName: HeadImageNameR.ImageName[2],
                mHeadImageInfo: HeadImageInfoR.detailedInfo[2],
              );
            }));
          },
          child: Image.asset("assets/images/religious_image/img_2.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("The International Society for Krishna.....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Gurudwara Sis Ganj Sahib",
          style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ReligiousUi(
                mHeadImage: AllHeadImagesR.ImageList[3],
                mHeadImageName: HeadImageNameR.ImageName[3],
                mHeadImageInfo: HeadImageInfoR.detailedInfo[3],
              );
            }));
          },
          child: Image.asset("assets/images/religious_image/img_3.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Gurudwara Sis Ganj Sahib, located in Chandni Chowk...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Chhatarpur Temple",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ReligiousUi(
                mHeadImage: AllHeadImagesR.ImageList[4],
                mHeadImageName: HeadImageNameR.ImageName[4],
                mHeadImageInfo: HeadImageInfoR.detailedInfo[4],
              );;
            }));
          },
          child: Image.asset("assets/images/religious_image/img_4.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Chhatarpur Temple, also known as Shri Adhya Katyani Shakti...",style: TextStyle(
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
                child: Text("Explore more about religious sites of New Delhi",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
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