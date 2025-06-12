
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

// Эндпоинт для управления записями TestData
class TestDataEndpoint extends Endpoint {
  
  /// Создает новую запись TestData в базе данных.
  Future<TestData> createTestData(Session session, TestData testData) async {
    final newTestData = TestData(title1: "${testData.title1} changed");

    await TestData.db.insertRow(session, newTestData);
    return newTestData;
  }

  /// Возвращает список всех записей.
  Future<List<TestData>> listTestDatas(Session session) async {
    return await TestData.db.find(
      session,
      orderBy: (t) => t.title1,
    );
  }

  /// Обновляет существующую запись.
  Future<TestData> updateTestData(Session session, TestData testData) async {
    await TestData.db.updateRow(session, testData);
    return testData;
  }

  /// Удаляет запись.
  Future<bool> deleteTestData(Session session, TestData testData) async {
    final result = await TestData.db.deleteRow(session, testData);
    return result.id == testData.id;
  }
}
