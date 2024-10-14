import 'package:cp/database/app.database.dart';
import 'package:cp/domain/animal.dart';
import 'package:get/get.dart';

class AnimalController extends GetxController {
 final Rx<bool> _status = Rx(false);
 final animalDataBase = AnimalDataBase.instance;

 AnimalController();

  saveAnimal(Animal value) async{

  }

}