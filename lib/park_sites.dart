import 'package:flutter/material.dart';
import 'package:tourist_app/park_all_sites/children_park.dart';
import 'package:tourist_app/park_all_sites/deer_park.dart';
import 'package:tourist_app/park_all_sites/jahanpanah_City_Forest.dart';
import 'package:tourist_app/park_all_sites/nehru_park.dart';
import 'package:tourist_app/park_all_sites/sunder_Nursery_Park.dart';

class ParkSites extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> nameImage = [
      {
        'name' : Text("Sunder Nursery Park",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SundarPark();
            }));
          },
          child: Image.asset("assets/images/parkSites_images/img.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Opened to public in 2018 after the Aga Khan....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_outline,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Children's Park",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ChildrenPark();
            }));
          },
          child: Image.asset("assets/images/parkSites_images/img_1.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("One of the best childhood memories with all cousins....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Nehru Park",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return NehruPark();
            }));
          },
          child: Image.asset("assets/images/parkSites_images/img_2.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Playground for children, areas to stroll, nice trees in a variety...",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Deer Park",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DeerPark();
            }));
          },
          child: Image.asset("assets/images/parkSites_images/img_3.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Deer Park with plenty of Deer and a beautiful park around it.....",style: TextStyle(
            color: Colors.grey
        ),),
        'icon' : Icon(Icons.star_half,color: Color.fromARGB(255,252,208,69),),
      },
      {
        'name' : Text("Jahanpanah City Forest",style: TextStyle(color: Colors.white),),
        'image' : InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return JahanpanahPark();
            }));
          },
          child: Image.asset("assets/images/parkSites_images/img_4.png",fit: BoxFit.cover,),
        ),
        'summary' : Text("Flower show of this garden is an important event in February....",style: TextStyle(
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
                child: Text("Explore more about park sites of New Delhi",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
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