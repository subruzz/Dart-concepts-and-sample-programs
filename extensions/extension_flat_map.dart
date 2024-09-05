/// Extension to add a `flatMap` method to nullable types (`T?`).
extension FlatMap<T> on T? {
  /// Applies the given callback function to the non-null value if the current value is not null.
  /// Returns the result of the callback function, which can also be nullable.
  ///
  /// - `R? Function(T) callBack`: A callback function that takes a non-null value of type `T`
  ///   and returns a nullable value of type `R`.
  ///
  /// Returns `null` if the current value is `null`, otherwise returns the result of the callback function.
  R? flatMap<R>(R? Function(T) callBack) {
    // Capture the current value (nullable) in a local variable `shadow`.
    final shadow = this;

    // Check if the value is null.
    if (shadow == null) {
      // If the value is null, return null.
      return null;
    } else {
      // If the value is not null, apply the callback function to it and return the result.
      return callBack(shadow);
    }
  }
}
