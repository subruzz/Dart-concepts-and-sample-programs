/// Extension to provide default values for nullable types (`T?`).
extension DefaultValues<T> on T? {
  /// Returns the non-null value if it exists; otherwise, returns a default value
  /// based on the type `T`. The default value is provided for common types.
  ///
  /// Throws an exception if there is no predefined default value for the type `T`.
  T get orDefault {
    // Capture the current nullable value in a local variable `shadow`.
    final shadow = this;

    // Check if `shadow` is not null.
    if (shadow != null) {
      // If not null, return the value.
      return shadow;
    } else {
      // If null, return a default value based on the type `T`.
      switch (T) {
        case int:
          return 0 as T; // Default value for `int`
        case double:
          return 0.0 as T; // Default value for `double`
        case String:
          return '' as T; // Default value for `String`
        case bool:
          return false as T; // Default value for `bool`
        default:
          // Throw an exception for unsupported types.
          throw Exception('No default value for type $T');
      }
    }
  }
}

void main() {
  // Example usage of `orDefault` to handle nullable parameters.
  print(getFull('ss', 'subru')); // Output: 'sssubru'
}
String getFull(String? param1, String? param2) {
  // Concatenate `param1` and `param2` using `orDefault` to provide default values.
  return '${param1.orDefault}${param2.orDefault}';
}
