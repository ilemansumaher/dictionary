import 'package:mobx/mobx.dart';
part 'main_controller.g.dart';

class ChangeContorller = _ChangeContorllerBase with _$ChangeContorller;

abstract class _ChangeContorllerBase with Store {
  final List<String> allLanguages = ['Türkçe', 'Русский', 'English'];

  @observable
   var chosse_lan = "";
  @observable
   var to_lan = "";

  @observable
  String lang1 = 'Türkçe';

  @observable
  String lang2 = 'Русский';

  @computed
  String get hiddenLang =>
      allLanguages.firstWhere((lang) => lang != lang1 && lang != lang2);

  @action
  void switchLanguage(int whichButton) {
    if (whichButton == 1) {
      lang1 = hiddenLang;
      chosse_lan = lang1;
    } else if (whichButton == 2) {
      lang2 = hiddenLang;
      to_lan = lang2;
    }
  }

  @action
  @action
  void swapLanguages() {
    final temp = lang1;
    lang1 = lang2;
    lang2 = temp;
    chosse_lan = lang1;
    to_lan = lang2;
  }
}
