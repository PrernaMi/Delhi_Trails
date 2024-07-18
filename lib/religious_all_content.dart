import 'package:flutter/material.dart';

class AllHeadImagesR{
  static List<List<Image>>ImageList = [
    //Akshardham
    [
      Image.asset("assets/images/akshardham/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/akshardham/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/akshardham/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/akshardham/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/akshardham/img_4.png",fit: BoxFit.cover,),
    ],
    //GurudwaraBanglaSahib
    [
      Image.asset("assets/images/Gurudwara_BanglaSahib/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Gurudwara_BanglaSahib/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Gurudwara_BanglaSahib/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Gurudwara_BanglaSahib/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Gurudwara_BanglaSahib/img_4.png",fit: BoxFit.cover,),
    ],
    //ISKCON_Temple
    [
      Image.asset("assets/images/ISKCON_Temple/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/ISKCON_Temple/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/ISKCON_Temple/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/ISKCON_Temple/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/ISKCON_Temple/img_4.png",fit: BoxFit.cover,),
    ],
    //GurudwaraSisGanjSahib
    [
      Image.asset("assets/images/Gurudwara_Sis_Ganj_Sahib/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Gurudwara_Sis_Ganj_Sahib/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Gurudwara_Sis_Ganj_Sahib/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Gurudwara_Sis_Ganj_Sahib/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Gurudwara_Sis_Ganj_Sahib/img_4.png",fit: BoxFit.cover,),
    ],
    //ChhatarpurTemple
    [
      Image.asset("assets/images/Chhatarpur_Temple/img.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Chhatarpur_Temple/img_1.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Chhatarpur_Temple/img_2.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Chhatarpur_Temple/img_3.png",fit: BoxFit.cover,),
      Image.asset("assets/images/Chhatarpur_Temple/img_4.png",fit: BoxFit.cover,),
    ],
  ];
}

class HeadImageNameR{
  static List<String> ImageName=[
    "Swaminarayan Akshardham",
    "Gurudwara Bangla Sahib",
    "ISKCON Temple",
    "Gurudwara Sis Ganj Sahib",
    "Chhatarpur Temple"
  ];
}

class HeadImageInfoR{
  static List<Text>  detailedInfo=[
    //Akshardham
    Text("Akshardham, also known as the Swaminarayan Akshardham complex, is a Hindu temple in Delhi, India. It is renowned for its architectural grandeur and intricate carvings. The temple was officially opened to the public in 2005.The complex showcases the traditional Indian culture and spirituality, combining elements of art, architecture, and history. The main temple, made of pink sandstone and white marble, is dedicated to Bhagwan Swaminarayan.Visitors can explore various exhibits within the complex, including the Hall of Values (Sahajanand Darshan), an IMAX theater (Nilkanth Darshan), and a boat ride (Sanskruti Vihar) that takes them through 10,000 years of India's heritage. Additionally, the Yagnapurush Kund, the largest stepwell in the world, is also part of the complex.Akshardham is more than just a place of worship; it is a cultural and educational hub, attracting millions of visitors each year.",
      style: TextStyle(color: Colors.white),),

    //GurudwaraBanglaSahib
    Text("Gurudwara Bangla Sahib is one of the most prominent Sikh gurdwaras, located in New Delhi, India. It is known for its association with the eighth Sikh Guru, Guru Har Krishan, and for its beautiful architecture and serene ambiance. Originally a bungalow belonging to Raja Jai Singh, the site was transformed into a gurdwara to commemorate Guru Har Krishan's stay and his humanitarian work during a smallpox and cholera epidemic in Delhi. The gurdwara features a golden dome and a large pool, known as the Sarovar, which is considered to have healing properties. It is a popular pilgrimage site and also offers free meals (langar) to visitors of all faiths.",
      style: TextStyle(color: Colors.white),),

    //ISKCON_Temple
    Text("The International Society for Krishna Consciousness (ISKCON) temple, also known as the Hare Krishna temple, is a place of worship dedicated to Lord Krishna. ISKCON temples are known for their vibrant and colorful architecture, devotional activities, and spiritual teachings based on the ancient texts of the Vedas, particularly the Bhagavad Gita and the Srimad Bhagavatam.",
      style: TextStyle(color: Colors.white),),

    //GurudwaraSisGanjSahib
    Text("Gurudwara Sis Ganj Sahib, located in Chandni Chowk, Delhi, is a prominent Sikh shrine. It marks the site where the ninth Sikh Guru, Guru Tegh Bahadur, was beheaded in 1675 by the Mughal Emperor Aurangzeb for refusing to convert to Islam. The Gurdwara was established in 1783 by Baghel Singh. It is a place of immense historical significance and spiritual reverence for Sikhs, symbolizing the sacrifice and steadfastness in upholding religious freedom. The Gurdwara complex also includes a well where Guru Tegh Bahadur took his last bath and the trunk of the tree under which he was executed.",
      style: TextStyle(color: Colors.white),),

    // ChhatarpurTemple
    Text("Chhatarpur Temple, also known as Shri Adhya Katyani Shakti Peetham, is a significant Hindu temple located in Chhatarpur, on the outskirts of Delhi, India. It's dedicated to Goddess Katyayani, a form of Goddess Durga. The temple is renowned for its expansive architecture that combines elements of both North and South Indian styles. The complex includes multiple shrines dedicated to different deities and features extensive lawns and gardens. It is a popular destination during festivals like Navratri, attracting devotees from across the country.",
      style: TextStyle(color: Colors.white),),

  ];
}
