class ApiResponse<T> {
  // Base class
}

class Success<T> extends ApiResponse<T> {
  final T data;
  Success(this.data);
}

class Error<T> extends ApiResponse<T> {
  final String errorMessage;
  Error(this.errorMessage);
}


