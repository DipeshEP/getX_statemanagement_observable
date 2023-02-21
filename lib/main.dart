import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_statemanagement/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
// Student obj=Student();

/// making the entire class is observable
final  obj=Student('dipesh',25).obs;
class MyHomePage extends StatefulWidget {


  const MyHomePage({super.key, });




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('State management class using obervable and custom class'),
      ),
      body:Center(
        child:Column(
          children: [
            Obx((){

              // return Text(obj.name.value);
              return Text(obj.value.name);

            }),
            MaterialButton(onPressed: (){
             // obj.name.value= obj.name.value.toUpperCase();
              obj.update((val)

              {
                val?.name=val.name.toString().toUpperCase();
              });
             // obj.value.name= obj.value.name.toUpperCase();
            },
              child: Text('upper case'),
             ),
            MaterialButton(onPressed: (){
    // if(obj.name.value== obj.name.value.toUpperCase()){
    //   obj.name.value= obj.name.value.toLowerCase();
    // }else{
    //   print("it is lower case");
    // }
    obj.update((val)

    {
      val?.name=val.name.toString().toLowerCase();
    });
    },
              child: Text('lower case'),
            )
          ],
        ) ,
      )
    );
  }
}
