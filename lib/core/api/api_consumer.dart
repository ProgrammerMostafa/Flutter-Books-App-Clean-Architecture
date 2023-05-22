abstract class ApiConsumer {
  Future<dynamic> getData(
    String path, {
    Map<String, dynamic>? queryParameters,
  });
  Future<dynamic> postData(
    String path, {
    Map<String, dynamic>? data,
    bool formDataIsEnabled = false,
    Map<String, dynamic>? queryParameters,
  });
  Future<dynamic> putData(
    String path, {
    Map<String, dynamic>? data,
    bool formDataIsEnabled = false,
    Map<String, dynamic>? queryParameters,
  });
}
