// ignore_for_file: constant_identifier_names

class ApiEndPoints {
  //Base URL for development
  static const DEVELOPMENT_BASE_URL = "http://103.10.168.42:7000";
  //Base URL for production
  static const PRODUCTION_BASE_URL = "http://103.10.168.42:7000";
  //Base URL for test
  //static const TEST_BASE_URL = "http://192.168.4.87:7000";
  //static const TEST_BASE_URL = "http://192.168.4.63:7000";
  static const TEST_BASE_URL = "http://103.10.168.42:7000/";

  /// Login Module API calls*
  // static const String CREATE_TOKEN = "$TEST_BASE_URL/login/";
  static const String CREATE_TOKEN = "accounts/login/";
  static const String DELETE_TOKEN = "accounts/logout/";

  // Profile Module API calls*
  static const String UPDATE_PROFILE = "/accounts/api/user_profile/";
}
