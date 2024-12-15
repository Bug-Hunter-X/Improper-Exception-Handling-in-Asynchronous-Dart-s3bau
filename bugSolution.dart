```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on Exception catch (e) {
    // Handle specific exceptions
    print('Error: $e');
    // Consider more sophisticated error handling, such as logging, user feedback, or retry logic
  } catch (e) {
    // Handle any other unexpected exceptions
    print('An unexpected error occurred: $e');
  }
}
```