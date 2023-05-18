import 'package:flutter_test/flutter_test.dart';
import 'package:pocketplanner/screens/login_page.dart';

 void main() {
  test('empty email returns an error string', (){
    var result= EmailFieldValidator.validate('');
    expect(result,'Please enter your email');
  });
  test('non-empty email returns an empty string',(){
    var result= EmailFieldValidator.validate('email');
    expect(result,null);
  });
  
  test('empty password returns an error string', (){
    var result= PasswordFieldValidator.validate('');
    expect(result,'Please enter a password');
  });
  test('password less than 6 charaters',(){
    var result= PasswordFieldValidator.validate('pass1');
    expect(result,'Password must be at least 6 characters long');
  });
  test('non-empty password returns an empty string',(){
    var result= PasswordFieldValidator.validate('pass123');
    expect(result,null);
  });

  

}