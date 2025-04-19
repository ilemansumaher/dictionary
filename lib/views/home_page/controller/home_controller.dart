import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int currentIndex=0;

  @action
  chagePageNavBar(int index){
    currentIndex=index;

  }
  

}