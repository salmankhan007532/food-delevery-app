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
        body: Column(
          children: [
            Container(
                  height: 110.sp,
                  width: 414.sp,
                  decoration: const BoxDecoration(
                    border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.grey))
                  ),
                  child: const Center(child: Text("Carrito",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Color(0xFF5117AC)),)),
                ),
                SizedBox(height: 12.sp,),
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
                Container(
                  height: 310.sp,
                  width: 414.sp,
                  color: Colors.green,
                  child: ListView(
                    children: [
                      carritoFirstContainer2(
                        height: 299.sp,
                        width: 243.sp,
                      ),
                    ],
                  ),
                )
          ],
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



Widget carritoFirstContainer2({var height, var width,}){
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(width: 1,color: Colors.grey)
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
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.amber,
                ),
                Text("Big Burger Queso",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 3, 49, 119)),),
                Wrap(children: [
                  SizedBox(height: 30,width: 188,
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius ",style: TextStyle(fontSize: 10,),
                     ),
                  ),
                ],
                ),
              ],
            ),
          ),
        ),
      ],
    )
  );
}