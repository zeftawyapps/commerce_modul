import 'package:dio/dio.dart';
import 'package:kurtoba_module/utilis/models/base_model.dart';

import 'package:kurtoba_module/utilis/result/result.dart';

import '../constants/api_urls.dart';
import '../interface/sources/I_http.dart';
import '../utilis/http_remotes/http_client.dart';
import '../utilis/http_remotes/http_methos_enum.dart';

class ProdHttpDataSource implements IHttpDataSource {
  @override
  Future<CommerceResult<RemoteBaseModel, Map<String , dynamic> >> getProduct()async  {

      var result =     await CommerceHttpClient(userToken: true).sendRequestResult(
          method: HttpMethod.GET,
          url: ApiUrls.getProd,
      
          cancelToken: CancelToken());


      return result;

  }

  @override
  Future<CommerceResult<RemoteBaseModel, Map<String , dynamic> >> getCategory() async {
    var result =     await CommerceHttpClient(userToken: true).sendRequestResult(
        method: HttpMethod.GET,
        url: ApiUrls.getCategory,

        cancelToken: CancelToken());
    return result;
  }

  @override
  Future<CommerceResult<RemoteBaseModel, Map<String , dynamic> >> getProductCategoryDetails(int  id) async{
    var result =     await CommerceHttpClient(userToken: true).sendRequestResult(
        method: HttpMethod.GET,
        url: ApiUrls.getCategoryId + "$id" ,

        cancelToken: CancelToken());
    return result;
  }

  @override
  Future<CommerceResult<RemoteBaseModel, Map<String , dynamic> >> getProductDetails(int  id)async {
    var result =     await CommerceHttpClient(userToken: true).sendRequestResult(
        method: HttpMethod.GET,
        url: ApiUrls.getprodId + "$id/" ,

        cancelToken: CancelToken());
    return result;
  }


}
