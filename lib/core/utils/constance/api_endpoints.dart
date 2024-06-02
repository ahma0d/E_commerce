const String baseUrl = 'http://192.168.129.254:3000/api';
const String baseUrlAuth = '$baseUrl/auth';

class ApiEndpoints {
  static String login = '$baseUrlAuth/login';

  static String signup = '$baseUrlAuth/signup';

  static String logout = '$baseUrlAuth/logout';
}
