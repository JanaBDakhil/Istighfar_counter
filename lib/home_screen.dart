import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// نعدل على ودجت ونحط سكرين هوم باسم الكلاس و السطر الثاني بعد كونست
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0; //حساب العداد
  counter() {
    //يحدث الحالة للصفحة مثل لما ازيد واحد يحدث العدد الى 2
    setState(() {
      count++;
    });
  }

//اعادة التعيين من جديد
  reset() {
    setState(() {
      count = 0; //اذا ضغط سيت يصفر العداد
    });
  }

  @override
  Widget build(BuildContext context) {
    //سكافولد نقطة البداية
    return Scaffold(
      // نبدأ بالجزء العلوي
      //اول شي سمول ثم بعد الفاصلة المنقوطة كابتل

      backgroundColor: Color.fromARGB(255, 230, 243, 255),
      appBar: AppBar(
        //  هنا ضبطنا الشريط العلوي

        backgroundColor: Color.fromARGB(255, 1, 33, 62),

        //هنا نخلي الكلام بالجزء العلوي بالوسط
        centerTitle: true,
        // فونت ويت هو سماكة الخطالكلام بالجزء العلوي
        title: Text("السبحة",
            style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        // لو مثلا ابي احط درجة لون معين اكتب Color.fromARGB(12,23,13), او colors.blue[]
      ),
//خلصنا الجزء العلوي اب بار ف بنبدا بعد قفل القوس بالبودي

//احنا حطينا كولوم لاننا بنشتغل بالطول عمودي

      body: Center(
        //احط كلمة سنتر عشان يكون الشكل الي اشتغل عليه بالبدي بالوسط *********مهم

        child: Column(
            //العمود الاول يمثل الدائرة الكبيرة الاساسية
            mainAxisAlignment:
                MainAxisAlignment.center, // هنا عشان اخلي الشكل بالوسط

            children: [
              Column(
                // سبيس بتوين معناه المسافة بين الجانبين يمين ويسار اما سبيس اراوند فهو المسافة ما بين فوق الدائرة وتحت
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //سوينا عمود ثاني يعبر عن المربع الصغير بداخل الدائرة الكبيرة
                children: [
                  Container(
                    // هنا طلبت منه يصغر الحجم يكوناقل من عرض الشاشةونقسمه على البيكسل
                    //  الريسبونس بمعنى تصميم يتناسب مع كافة ومختلف الشاشات كل شاشة وحسب البيكسل حقتها*******
                    width: MediaQuery.of(context).size.width / 1.50,
                    height: MediaQuery.of(context).size.width / 1.50,

                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 5, 56, 103),
                        shape: BoxShape.circle,
                        boxShadow: [
                          //الظل الي حوالين الدائرة
                          BoxShadow(
                              offset: Offset(1, 9),
                              blurRadius:
                                  20, // ما ينفع يكون في الكونتينر اكثر من لون مثلا احط فوق لون في الديكوريشن وبرضو بالبوكس شادو لون ثاني
                              color: Colors.white),
                        ]),
                    // هنا نبي نحط الصغير بالوسط
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical:
                                30), //بادينق مسافة وسمتريك يتحكمبشكل محور واي واكس

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30), //الحواف
                            color: Colors.white),
                        // هنا نستدعي الي سويناه
                        //تكست بشكل يتعامل مع الفانكشن
                        child: Text(
                          count.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                          //هنا لتعريض الثيم
                        ), //نبيه على شكل سترينق عشان كذا جطيت تو سترنق
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ), //تنرانزليست معناه التحرك بالجهات
                  Transform.translate(
                    offset: Offset(1,
                        9), //تحريك الويدجت في مكانها الاساسي,اقدر احركه بمكانه نفس الزر تحت
                    child: Container(
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 5, 56, 103),

                          // اونلي معناه ياخذ من الرايت جهه والليفت جهه  من كل جهه يعني
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0,
                                    4), //هنا كنا قاعدين نضبط المربع الكبير تحت
                                color: Colors.white.withOpacity(.5),
                                spreadRadius: 5,
                                blurRadius: 5),
                          ]),

                      //هنا حطينا كولوم لاننا بنشتغل على شكل عمودي في المربع الكبير اللي سويناه تحت
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            // هنا بمعنى اذا ضغط شخص وده الى الكونتر
                            onPressed: () => counter(),

                            child: Container(
                              // عطيناه سنتر

                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 9, 8, 69),
                                  shape: BoxShape.circle),
                            ),
                            //ستايل دايم يجي مع السطر 140 ايفلي بوتون

                            style: ElevatedButton.styleFrom(
                                // هنا يقول عطني السايز
                                maximumSize: Size(80, 80)),
                          ),

                          SizedBox(
                            height: 30,
                          ),
                          // نشتغل على الزر الي فيه ريستارت وشكله افقي
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                // ودني للريست
                                onPressed: () => reset(),
                                child: Icon(
                                  // عبارة عن ايكون
                                  Icons.wifi_protected_setup_sharp,
                                  size: 33,
                                ),
                                style: ElevatedButton.styleFrom(
                                    //
                                    foregroundColor:
                                        const Color.fromARGB(255, 247, 46, 31),
                                    elevation: 20),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
