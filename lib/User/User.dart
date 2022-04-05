class User{
  String? _name;
  String? _email;
  String? _password;

  User(String name, String email, String password){
    this._name = name;
    this._email = email;
    this._password = password;
  }

  String getName(){
    return _name!;
  }
  String getEmail(){
    return _email!;
  }
  String getPassword(){
    return _password!;
  }

}