
import '../https/commerce_http_urls.dart';

class ApiUrls{

  static   String BASE_URL = CommerceBaseUrlEnveiroment().baseUrl! ;
  static String testConnection = BASE_URL+"/testConnection";
  static String getProd = BASE_URL +  "/api/v1/products/";
  static String getprodId = BASE_URL +  "/api/v1/products/";
  static String  getCategory = BASE_URL +  "/api/v1/categories";
  static String getCategoryId = BASE_URL +  "/api/v1/products/category/";


}