import 'package:mobx/mobx.dart';

part 'contact.g.dart';

class Contact = _Contact with _$Contact;

abstract class _Contact with Store {
  @observable
  String first = 'Paulo';

  @observable
  String last = 'Santos';

  @computed
  String get fullName => '${first} ${last}';
}
