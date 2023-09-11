import 'package:calculadoraimc/ImcUtils/imcUtils.dart' as app;
import 'package:test/test.dart';

void main() {
  group('Valores de IMC válidos', () {
    var valuesToTest = {
      {'peso' : 48.6, 'altura' : 1.8} : 15,
      {'peso' : 53.46, 'altura' : 1.8} : 16.5,
      {'peso' : 56.7, 'altura' : 1.8} : 17.5,
      {'peso' : 71.28, 'altura' : 1.8} : 22,
      {'peso' : 87.48, 'altura' : 1.8} : 27,
      {'peso' : 106.92, 'altura' : 1.8} : 33,
      {'peso' : 123.12, 'altura' : 1.8} : 38,
      {'peso' : 132.84, 'altura' : 1.8} : 41
    };

    valuesToTest.forEach((values, expected) {
      test('Entrada: $values Esperado $expected' , () {
        expect(
        app.calculoImc(
        double.parse(values['peso'].toString()), 
        double.parse(values['altura'].toString())), 
        equals(expected));

        app.resultadoImc(expected, 'Alvaro');
     });
    });
  });
}
