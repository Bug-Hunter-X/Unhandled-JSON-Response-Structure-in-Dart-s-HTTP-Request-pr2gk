# Unhandled JSON Response Structure in Dart HTTP Request

This repository demonstrates a common error in Dart applications when handling HTTP requests and JSON responses. The code assumes a specific JSON structure, which can lead to runtime errors if the server returns a different structure.

## The Bug
The `fetchData()` function makes an HTTP GET request.  It then parses the JSON response, assuming a `data` key exists. If the response lacks this key, or has a different structure, a runtime error occurs.  This is often seen as a `null` or `undefined` error depending on the exact nature of the problem.

## The Solution
The solution involves adding error handling to gracefully manage unexpected JSON structures.  This includes checks for null values and handling other potential response issues.

## How to Run
1. Clone this repository.
2. Run the `bug.dart` file using the Dart VM (e.g., `dart bug.dart`).
3. Observe the error.
4. Then run `bugSolution.dart` to see the improved, error-handled version.