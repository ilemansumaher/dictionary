import 'package:mobx/mobx.dart';
part 'book_controller.g.dart';

class BookController = _BookControllerBase with _$BookController;

abstract class _BookControllerBase with Store {
  @observable
  List<bool> checkBox = List.generate(
    10,
    (index) => true,
  );

  @action
  void checkItBox(int index,bool? check) {
    print("Isledi");
    checkBox[index]=check?? false;
  }
}
