import './User.dart';

class UserService {
  User getUser() {
    return User(name: "Jane Doe", age: 18, ipk: 3.7);
  }

  User createUser(String name, int age, double ipk) {
    return User(name: name, age: age, ipk:ipk);
  }
}

