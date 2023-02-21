import 'package:get/get.dart';

class Student{

  /*classes can be made observable by making individuals variables Rx or
  by making the entire class observable
   */

  ///individuals variables Rx
  // var name='dipesh'.obs;
  // var age=25.obs;

  //To make the entire class observable
  var name;
  var age;
   Student( this.name, this.age);
}