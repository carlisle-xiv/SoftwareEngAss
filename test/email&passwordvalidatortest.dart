
import 'package:gods_eye/components/screens/login_screen/login2.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gods_eye/screens/login_screen/login2.dart';


void main() {

  test('empty email returns error string', () {

    final result = EmailFieldValidator.validate('');
    expect(result, 'Email can\'t be empty');
  });

  test('non-empty email returns null', () {

    final result = EmailFieldValidator.validate('email');
    expect(result, null);
  });

  test('empty password returns error string', () {

    final result = PasswordFieldValidator.validate('');
    expect(result, 'Password can\'t be empty');
  });

  test('non-empty password returns null', () {

    final result = PasswordFieldValidator.validate('password');
    expect(result, null);
  });
}