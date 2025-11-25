import 'package:flutter_test/flutter_test.dart';
import 'package:moviles2/utils/validators.dart';

void main() {
  group('Validators Tests - CI/CD Pipeline', () {
    // TEST 1: Validar Email
    test('validateEmail - debe retornar true si contiene @ y .', () {
      expect(Validators.validateEmail('test@example.com'), true);
      expect(Validators.validateEmail('user@domain.co'), true);
    });

    test('validateEmail - debe retornar false si falta @ o .', () {
      expect(Validators.validateEmail('testexample.com'), false);
      expect(Validators.validateEmail('test@examplecom'), false);
      expect(Validators.validateEmail(''), false);
    });

    // TEST 2: Seguridad Contraseña
    test('validatePasswordSecurity - debe retornar true si longitud > 6', () {
      expect(Validators.validatePasswordSecurity('1234567'), true);
      expect(Validators.validatePasswordSecurity('password123'), true);
      expect(Validators.validatePasswordSecurity('abcdefg'), true);
    });

    test('validatePasswordSecurity - debe retornar false si longitud <= 6', () {
      expect(Validators.validatePasswordSecurity('123456'), false);
      expect(Validators.validatePasswordSecurity('abc'), false);
      expect(Validators.validatePasswordSecurity(''), false);
    });

    // TEST 3: Calculadora Descuento
    test('calculateDiscount - debe calcular el precio con descuento correctamente', () {
      expect(Validators.calculateDiscount(100, 10), 90.0);
      expect(Validators.calculateDiscount(50, 20), 40.0);
      expect(Validators.calculateDiscount(200, 50), 100.0);
    });

    test('calculateDiscount - debe manejar casos límite', () {
      expect(Validators.calculateDiscount(100, 0), 100.0);
      expect(Validators.calculateDiscount(100, 100), 0.0);
    });

    test('calculateDiscount - debe lanzar error con valores inválidos', () {
      expect(() => Validators.calculateDiscount(-10, 20), throwsArgumentError);
      expect(() => Validators.calculateDiscount(100, -5), throwsArgumentError);
      expect(() => Validators.calculateDiscount(100, 150), throwsArgumentError);
    });

    // TEST 4: Rango Válido
    test('isInValidRange - debe retornar true si el número está entre 1 y 10', () {
      expect(Validators.isInValidRange(1), true);
      expect(Validators.isInValidRange(5), true);
      expect(Validators.isInValidRange(10), true);
    });

    test('isInValidRange - debe retornar false si el número está fuera de rango', () {
      expect(Validators.isInValidRange(0), false);
      expect(Validators.isInValidRange(11), false);
      expect(Validators.isInValidRange(-5), false);
      expect(Validators.isInValidRange(100), false);
    });

    // TEST 5: Texto a Mayúsculas
    test('toUpperCase - debe convertir texto a mayúsculas', () {
      expect(Validators.toUpperCase('hello'), 'HELLO');
      expect(Validators.toUpperCase('flutter'), 'FLUTTER');
      expect(Validators.toUpperCase('Test123'), 'TEST123');
    });

    test('toUpperCase - debe manejar textos ya en mayúsculas y vacíos', () {
      expect(Validators.toUpperCase('HELLO'), 'HELLO');
      expect(Validators.toUpperCase(''), '');
      expect(Validators.toUpperCase('MiXeD CaSe'), 'MIXED CASE');
    });
  });
}
