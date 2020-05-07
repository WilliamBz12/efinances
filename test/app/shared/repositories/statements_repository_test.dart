import 'package:efinances/app/shared/models/statements_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart' as prefix0;
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:efinances/app/shared/repositories/statements_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  StatementsRepository repository;
  MockClient client;

  setUp(() {
    repository = StatementsRepository();
    client = MockClient();
  });

  group('StatementsRepository Test', () {
    test("Teste inicial", () {
      expect(repository, isInstanceOf<StatementsRepository>());
    });

    test("Espera retornar o tipo do primeiro dado", () async {
      List<StatementsModel> list = await repository.getListStatements();
      expect(list[0].type, 'alimentacao');
    }); 
  });
}
