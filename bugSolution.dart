```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Handle potential null values
      final data = jsonData['data'];
      if (data != null) {
        // Process the data
        print('Data: $data');
      } else {
        print('Data key not found in JSON response.');
        // Handle the missing data case
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Better error handling (e.g., retry, user feedback)
  }
}
```