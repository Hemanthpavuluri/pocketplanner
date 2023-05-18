import 'package:flutter_test/flutter_test.dart';
import 'package:pocketplanner/screens/signup_page.dart';

 void main() {

  //sign up page email test
  test('empty email returns an error string', (){
    var result= EmailFieldValidator.validate('');
    expect(result,'Please enter your email');
  });
  test('non-empty email returns an empty string',(){
    var result= EmailFieldValidator.validate('email');
    expect(result,null);
  });
  

  //sign up page password test
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


  //sign up page name test
   test('Full name contains number in it',(){
    var result= Namevalidator.validate('name12');
    expect(result,'Name should not contains integers');
  });

   test('empty Full name field return error',(){
    var result= Namevalidator.validate('');
    expect(result,'Please enter the full name');
  });

   test('non empty Full name field returns null',(){
    var result= Namevalidator.validate('name');
    expect(result,null);
  });


  

}