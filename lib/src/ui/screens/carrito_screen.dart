import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarritoScreen extends StatefulWidget {
  const CarritoScreen({super.key});

  @override
  State<CarritoScreen> createState() => _CarritoScreenState();
}

class _CarritoScreenState extends State<CarritoScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(10.0.sp),
          child: Column(
            children: [
              Container(
                    height: 110.sp,
                    width: 414.sp,
                    decoration: const BoxDecoration(
                      border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.grey))
                    ),
                    child: const Center(child: Text("Trolley",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Color(0xFF5117AC)),)),
                  ),
                  SizedBox(height: 30.sp,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      carritoFirstContainer(color: Colors.blue[900],textcolor: Colors.white),
                      SizedBox(width: 8.sp,),
                      carritoFirstContainer(color: Colors.white,textcolor: Colors.blue[900]),
                      SizedBox(width: 8.sp,),
                      CircleAvatar(
                        radius: 25.sp,
                        backgroundColor: Colors.blue[900],
                        child: const Icon(Icons.add,size: 35,color: Colors.white ,),
                        ),
                    ],
                  ),
                  SizedBox(height: 25.sp,),
                  SizedBox(
                    height: 299.sp,
                    width: 414.sp,
                    //color: Colors.amber,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        carritoFirstContainer2(),
                        SizedBox(width: 5.sp,),
                        carritoFirstContainer2(),
                        SizedBox(width: 5.sp,),
                        carritoFirstContainer2(),
                      ],
                    )
                  ),
        
                  SizedBox(height: 20.sp,),
                  Container(
                    height: 175.sp,
                    width: 414.sp,
                    decoration: const BoxDecoration(
                      //border: Border.all(width: 1, color: Colors.grey)
                    ),
                    child:  Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 30.sp,vertical: 10),
                            child: Column(
                              children: [
                                const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Text("SubTotal",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800,color: Color(0xFF5117AC)),),
                                 Text("850.00 PKR",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800,color: Color(0xFF5117AC)),),
                              ],
                            ),
                            SizedBox(height: 8.sp,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Text("Envio",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800,color: Color(0xFF5117AC)),),
                                 Text("Gratis",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800,color: Color(0xFF5117AC)),),
                              ],
                            ),
                            SizedBox(height: 8.sp,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Text("Total:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xFF5117AC)),),
                                 Text("850.00 PKR",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xFF5117AC)),),
                              ],
                            ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.sp,),
                          Container(
                                  height: 63.sp,
                                  //width: 210.sp,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xFF2EC8C1),
                                                  Color(0xFF4A1192),
                                                  
                                                ],
                                              )
                                  ),
                                  child: const Center(child: Text("Conform",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),)),
                                ),
                    
                        ],
                      ),
                    ),
                  )
            ],
          ),
        ),
        
      ),
    );
  }
}

Widget carritoFirstContainer({var color,var textcolor}){
  return Container(
    height: 50.sp,
    width: 150.sp,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(width: 1,color: Colors.grey)
    ),
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home_outlined,color: textcolor,),
        const SizedBox(width: 8,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mi casa",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color:textcolor),),
            Text("Direción de ejemplo",style: TextStyle(fontSize: 9,color:textcolor),)
          ],
        ),
      ],
    ),
  );
}



Widget carritoFirstContainer2({var image,}){
  return Container(
    height: 260,
    width: 230,
    decoration: const BoxDecoration(
      //color: Colors.yellow,
      //borderRadius: BorderRadius.circular(15),
      //border: Border.all(width: 1,color: Colors.grey)
    ),
    child: Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: 236,
            width: 230,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 0.1,color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                   // backgroundColor: Colors.amber,
                   backgroundImage: AssetImage("assets/images/112.png"),
                  ),
                  Text("Big Burger Queso",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 3, 49, 119)),),
                  Wrap(children: [
                    SizedBox(height: 30,width: 188,
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius ",style: TextStyle(fontSize: 10,),
                       ),
                    ),
                  ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 24,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Color.fromARGB(255, 4, 57, 138),
                              child: Center(child: Icon(Icons.minimize_rounded,size: 10,color: Colors.white,)),
                            ),
                            Text("2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Color.fromARGB(255, 4, 57, 138),
                              child: Center(child: Icon(Icons.add,size: 15,color: Colors.white,)),
                            ),
            
                          ],
                        ),
                      ),
                      SizedBox(width: 13,),
                      Text("2240 PKR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 4, 70, 124)),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
            child: Icon(Icons.delete,size: 20,color: Colors.white,),
          ),
        )
      ],
    )
  );
}