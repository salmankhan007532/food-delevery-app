import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delevry_app/src/ui/widgets/Explorar%20categorias.dart';
import 'package:food_delevry_app/src/ui/widgets/Productos_populares_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
         body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 131.sp,
              width: 414.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                SizedBox(
                  height: 55.sp,
                  width: 145.sp,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search,size: 20,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                  ),
                ),
                const Text("Inicio",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Color(0xFF5117AC)),),
                SizedBox(width: 14.sp,),
                const Icon(Icons.notifications_outlined,size: 30,color: Colors.blue,),
                const Icon(Icons.settings,size: 30,color: Colors.blue,),
              ],),
            ),
            const Text("Explorar categorias",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
            SizedBox(height: 8.sp,),
            SizedBox(
              height: 85.sp,
              width: 414.sp,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                   ExplorarCategoriasContainer(image: "Group 159.png", title: "Tacos",color: const Color(0xFFD0E6A5),),
                  SizedBox(width: 23.sp,),
                   ExplorarCategoriasContainer(image: "Group 107.png", title: "Frias",color: const Color(0xFF86E3CE),),
                  SizedBox(width: 23.sp,),
                   ExplorarCategoriasContainer(image: "Group 169.png", title: "Burger",color: const Color(0xFFFFDD95),),
                  SizedBox(width: 23.sp,),
                   ExplorarCategoriasContainer(image: "Group 197.png", title: "Pizza",color: const Color(0xFFFFACAC),),
                   SizedBox(width: 23.sp,),
                   ExplorarCategoriasContainer(image: "Group 220.png", title: "Burritos",color: const Color(0xFFCCAAD9),),
                ],
              ),
            ),
            SizedBox(height: 15.sp,),
            const Text("Productos populares",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
            Container(
              height: 214.sp,
              width: 414.sp,
              color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductospopularesContainer(),
                ],
              ),
            )

          ],
         ),
      ),
    );
  }
}