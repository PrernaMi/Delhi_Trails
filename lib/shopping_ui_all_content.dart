import 'package:flutter/material.dart';

class AllHeadImagesS{
  static List<List<Image>>ImageList = [
    //Dilli Haat
    [
      Image.asset("assets/images/dilli_haat/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/dilli_haat/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/dilli_haat/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/dilli_haat/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/dilli_haat/img_4.png",fit: BoxFit.cover,),
    ],
    //Janpath
    [
      Image.asset("assets/images/janpath_market/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/janpath_market/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/janpath_market/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/janpath_market/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/janpath_market/img_4.png",fit: BoxFit.cover,),
    ],
    //Khan Market
    [
      Image.asset("assets/images/khan_market/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/khan_market/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/khan_market/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/khan_market/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/khan_market/img_4.png",fit: BoxFit.cover,),
    ],
    //Sarojini Nagar Market
    [
      Image.asset("assets/images/sarojini_market/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/sarojini_market/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/sarojini_market/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/sarojini_market/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/sarojini_market/img_4.png",fit: BoxFit.cover,),
    ],
    //Chandni Chowk
    [
      Image.asset("assets/images/chandni_chawk/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/chandni_chawk/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/chandni_chawk/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/chandni_chawk/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/chandni_chawk/img_4.png",fit: BoxFit.cover,),
    ],
  ];
}

class HeadImageNameS{
  static List<String> ImageName=[
    "Dilli Haat",
    "Janpath",
    "Khan Market",
    "Sarojini Nagar Market",
    "Chandni Chowk"
  ];
}

class HeadImageInfoS{
  static List<Text>  detailedInfo=[
    //Dilli Haat
    Text("Dilli Haat is a group of stall cottages set up by the Government of Delhi and is a popular tourist spot because of its rustic village-like atmosphere. With a plethora of attractions like street food, folk performances, and rare handicrafts, Dilli Haat makes it to the top of this list of best places to shop in Delhi. This market is most famous for souvenirs like paintings, traditional textiles, footwear, jewellery, pottery, and furniture. ",
      style: TextStyle(color: Colors.white),),

    //Janpath
    Text("One of the most crowded markets in all of Delhi, the market in Janpath is famous for t-shirts, jackets, scarves, and several other forms of apparel. However, the goodness of this market lies in the prices. Almost all items sold are available at unbelievably low prices.",
      style: TextStyle(color: Colors.white),),

    //Khan Market
    Text("Khan Market is one of the many compound markets you can find in Delhi, with a lively blend of both street shops as well as international branded outlets. This heterogeneous mix makes it a must-visit amongst shopping enthusiasts in Delhi. Some of the things you can buy here are garments, jewellery, books, luxurious home furnishings, ethnic wear, and music-related items.",
      style: TextStyle(color: Colors.white),),

    //Sarojini Nagar Market
    Text("Instead of crowding at expensive stores that are geared towards scoring a massive profit from leisure tourists, you can indulge yourself in local markets like the one in Sarojini Nagar. You will find that despite being a chaotic market, sprawling with different kinds of shops, you will most likely find any item you are looking for here. Beginning with footwear, handicrafts, clothes, and sporting goods, the market has it all, making it the perfect place for tourists to shop at. ",
      style: TextStyle(color: Colors.white),),

    //Chandni Chowk
    Text("The fabled markets of Chandni Chowk have always been more of a tourist spot, in addition to a shopping destination. This is because the market was built by the Mughal Emperor, Shah Jahan, with the help of designs and architecture from his daughter, Jahanara. While the canal systems that segregated this market into different sub-sections may not exist today, the different areas of the market with their distinct names can be found even today. For example, Katra Neel, Chatta Chowk, Khari Baoli, Tilak Bazaar, Chor Bazaar, Daryaganji, and Paranthe Wali Gali, are sections of this market that are all known for their speciality goods starting from fabrics to jewellery and electronics.",
      style: TextStyle(color: Colors.white),),

  ];
}
