import 'package:flutter/material.dart';

class AllHeadImagesF{
  static List<List<Image>>ImageList = [
    //Old Delhi
    [
      Image.asset("assets/images/old_delhi/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/old_delhi/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/old_delhi/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/old_delhi/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/old_delhi/img_4.png",fit: BoxFit.cover,),
    ],
    //Gali Paranthe Wali
    [
      Image.asset("assets/images/gali_Paranthe_Wali/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/gali_Paranthe_Wali/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/gali_Paranthe_Wali/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/gali_Paranthe_Wali/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/gali_Paranthe_Wali/img_4.png",fit: BoxFit.cover,),
    ],
    //Pandara Road
    [
      Image.asset("assets/images/pandara_Road/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/pandara_Road/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/pandara_Road/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/pandara_Road/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/pandara_Road/img_4.png",fit: BoxFit.cover,),
    ],
    //South Campus
    [
      Image.asset("assets/images/south_Campus/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/south_Campus/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/south_Campus/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/south_Campus/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/south_Campus/img_4.png",fit: BoxFit.cover,),
    ],
    //Hudson Lane
    [
      Image.asset("assets/images/hudson_Lane/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/hudson_Lane/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/hudson_Lane/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/hudson_Lane/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/hudson_Lane/img_4.png",fit: BoxFit.cover,),
    ],
  ];
}

class HeadImageNameF{
  static List<String> ImageName=[
    "Old Delhi",
    "Gali Paranthe Wali",
    "Pandara Road",
    "South Campus",
    "Hudson Lane"
  ];
}

class HeadImageInfoF{
  static List<Text>  detailedInfo=[
    //Old delhi
    Text("Old Delhi, the historical heart of the city, is renowned for its rich and diverse culinary heritage. The narrow, bustling streets are filled with the aroma of spices and the sizzling sounds of food being prepared. This area is a paradise for food lovers, offering an array of traditional Indian dishes that reflect the region's Mughal and Punjabi influences One of the most famous spots in Old Delhi is Chandni Chowk, a vibrant market area where you can find an assortment of street food. Here, you can savor the flavors of kebabs, parathas, and chaat. The kebabs, made from marinated meat cooked over open flames, are especially popular for their succulent and smoky taste. Paranthe Wali Gali is another notable lane in Chandni Chowk, known for its variety of stuffed parathas, a type of flatbread.",
      style: TextStyle(color: Colors.white),),

    //Gali Paranthe Wali
    Text("Gali Paranthe Wali, located in Chandni Chowk, Delhi, is a narrow street renowned for its shops selling paranthas, a type of Indian flatbread. The street has been a culinary hotspot since the late 19th century, with several generations of families running these establishments. Paranthas here are unique, often stuffed with a variety of fillings such as potatoes, paneer, cauliflower, lentils, and even more unusual ones like bananas and rabri. They are typically served with accompaniments like mint chutney, tamarind chutney, mixed vegetable pickle, and a variety of curries. The area is not just a foodie's delight but also a piece of Delhi's rich cultural and culinary heritage, attracting locals and tourists alike. The ambiance, with its vintage charm and bustling atmosphere, adds to the experience, making it a must-visit for anyone exploring the culinary landscape of Delhi.",
      style: TextStyle(color: Colors.white),),

    // //Pandara Road
    Text("Pandara Road in Delhi is renowned for its vibrant and diverse culinary scene. Located near India Gate, it hosts an array of popular restaurants offering various cuisines. The area is particularly famous for its North Indian and Mughlai dishes, with places like Gulati Restaurant and Have More being favorites among locals and tourists alike. The street food here is also notable, providing a rich blend of flavors and aromas that reflect the cultural heritage of the city. The ambiance of Pandara Road, coupled with its gastronomic delights, makes it a must-visit destination for food enthusiasts.",
      style: TextStyle(color: Colors.white),),

    ////South Campus
    Text("South Campus is known for its diverse and vibrant food scene. There's a wide range of cuisines available, reflecting the multicultural community of the campus. Many eateries focus on health-conscious options, offering fresh, locally sourced ingredients, vegetarian, vegan, and gluten-free choices. Convenience is key, with numerous grab-and-go options and quick service to accommodate busy schedules. The atmosphere is often lively, with food trucks, cafes, and casual dining spots providing a social hub for students and staff.",
      style: TextStyle(color: Colors.white),),

    //Hudson Lane
    Text("Hudson Lane, located in the heart of North Delhi near the North Campus of Delhi University, is a popular spot among students and young professionals for its vibrant food scene. This area is bustling with a wide variety of cafes, eateries, and street food vendors offering diverse cuisines. From affordable street food to quirky cafes and trendy restaurants, Hudson Lane has something for everyone. Whether you crave traditional Indian dishes, continental fare, or delicious desserts, this food hub is known for its lively atmosphere and mouth-watering options. Popular spots include Big Yellow Door, Woodbox Café, and Ricos, among others, making it a go-to destination for food lovers in Delhi.",
      style: TextStyle(color: Colors.white),),

  ];
}
