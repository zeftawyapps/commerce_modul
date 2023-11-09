
import '../interface/sources/I_http.dart';
import '../utilis/models/base_model.dart';
import '../utilis/result/result.dart';

class CommerceRepo {


  IHttpDataSource ? _HttpBaseSource;

  CommerceRepo({IHttpDataSource? httpSoucre}) {
    this._HttpBaseSource = httpSoucre;
  }

  Future<CommerceResult<RemoteBaseModel, RemoteBaseModel>> getProduction() async {
    var result = await _HttpBaseSource!.getProduct();
    RemoteBaseModel? data, error;
    result.pick(onData: (v) {
      data = RemoteBaseModel(data: v["results"]);
    }, onError: (e) {
      error = RemoteBaseModel(message: e.message, status: e.status);
    });
    CommerceResult<RemoteBaseModel, RemoteBaseModel> dresult =
    CommerceResult(data: data, error: error);
    return dresult;
  }
  Future<CommerceResult<RemoteBaseModel, RemoteBaseModel>> getProductionById(int id ) async {
    var result = await _HttpBaseSource!.getProductDetails(id);
    RemoteBaseModel? data, error;
    result.pick(onData: (v) {
      data = RemoteBaseModel(data: v["results"]);
    }, onError: (e) {
      error = RemoteBaseModel(message: e.message, status: e.status);
    });
    CommerceResult<RemoteBaseModel, RemoteBaseModel> dresult =
    CommerceResult(data: data, error: error);
    return dresult;
  }
  Future<CommerceResult<RemoteBaseModel, RemoteBaseModel>> getCatigory() async {
    var result = await _HttpBaseSource!.getCategory();
    RemoteBaseModel? data, error;
    result.pick(onData: (v) {
      data = RemoteBaseModel(data: v["data"]);
    }, onError: (e) {
      error = RemoteBaseModel(message: e.message, status: e.status);
    });
    CommerceResult<RemoteBaseModel, RemoteBaseModel> dresult =
    CommerceResult(data: data, error: error);
    return dresult;
  }
  Future<CommerceResult<RemoteBaseModel, RemoteBaseModel>> getCatigoryById(int id ) async {
    var result = await _HttpBaseSource!.getProductCategoryDetails(id);
    RemoteBaseModel? data, error;
    result.pick(onData: (v) {
      data = RemoteBaseModel(data: v["data"] );
    }, onError: (e) {
      error = RemoteBaseModel(message: e.message, status: e.status);
    });
    CommerceResult<RemoteBaseModel, RemoteBaseModel> dresult =
    CommerceResult(data: data, error: error);
    return dresult;
  }

}
