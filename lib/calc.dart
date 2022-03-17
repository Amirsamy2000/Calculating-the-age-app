import 'dart:io';
class calc{
  static  int age1=0;
  calc(int  p){
    int brith=p;
    age1=DateTime.now().year-brith;
    print(age1);
  }
}
