 import 'package:kurtoba_module/utilis/models/base_model.dart';

import '../../utilis/result/result.dart';

abstract  class IHttpDataSource {
Future<CommerceResult<RemoteBaseModel , Map<String , dynamic> >>getProduct ( );
Future<CommerceResult<RemoteBaseModel , Map<String , dynamic>  >>getProductDetails (int  id  );
Future<CommerceResult<RemoteBaseModel , Map<String , dynamic>  >>getCategory ( );
Future<CommerceResult<RemoteBaseModel , Map<String , dynamic>  >>getProductCategoryDetails (int  id  );
}