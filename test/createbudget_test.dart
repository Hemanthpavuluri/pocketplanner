import 'package:flutter_test/flutter_test.dart';
import 'package:pocketplanner/screens/createbudget.dart';
import 'package:pocketplanner/screens/entertainment.dart';
import 'package:pocketplanner/screens/foodanddrinkspage.dart';
import 'package:pocketplanner/screens/housingpage.dart';
import 'package:pocketplanner/screens/incomepage.dart';
import 'package:pocketplanner/screens/lifestyle.dart';
import 'package:pocketplanner/screens/savings.dart';
import 'package:pocketplanner/screens/transportation.dart';

void main() {
//budget name page name test
   test('empty budget name field return error',(){
    var result= BudgetNameValidator.validate('');
    expect(result,'Please give a name to your budget');
  });

   test('non empty budget name field returns null',(){
    var result= BudgetNameValidator.validate('name');
    expect(result,null);
  });

  //income page test
  test('empty income field return error',(){
    var result= SalaryValidator.validate('');
    expect(result,'Please give your salary');
  });

   test('non income name field returns null',(){
    var result= SalaryValidator.validate('123');
    expect(result,null);
  });

  //housing page test
  test('empty housing field return error',(){
    var result= HousingValidator.validate('');
    expect(result,'Please give your rent');
  });

   test('non empty housing field returns null',(){
    var result= HousingValidator.validate('123');
    expect(result,null);
  });

   //food and drinks page test
  test('empty groceries field return error',(){
    var result= FoodandDrinksValidator.validate('');
    expect(result,'Please give your groceries');
  });

   test('non empty groceries field returns null',(){
    var result= FoodandDrinksValidator.validate('123');
    expect(result,null);
  });

   //entertainmentpage test
  test('empty movies field return error',(){
    var result= EntertainmentValidator.validate('');
    expect(result,'Please give your movie bill');
  });

   test('non empty budget name field returns null',(){
    var result= EntertainmentValidator.validate('123');
    expect(result,null);
  });

  //transporation page test
  test('empty gas field return error',(){
    var result= TransportationValidator.validate('');
    expect(result,'Please give your gas bill');
  });

   test('non empty gas field returns null',(){
    var result= TransportationValidator.validate('123');
    expect(result,null);
  });

  //transporation page test
  test('empty travel field return error',(){
    var result= LifestyleValidator.validate('');
    expect(result,'Please give your travel bill');
  });

   test('non empty travel field returns null',(){
    var result= LifestyleValidator.validate('123');
    expect(result,null);
  });

  //transporation page test
  test('empty savings field return error',(){
    var result= SavingsValidator.validate('');
    expect(result,'Please give your savings');
  });

   test('non empty savings field returns null',(){
    var result= SavingsValidator.validate('123');
    expect(result,null);
  });
  


}