import 'dart:io';

 import '../../utilis/models/base_data_model.dart';


abstract class IQuizUploadSource<T extends IBaseDataModel   > {

  Future   addDataRowWithUpload( File?file ,String? imagfileld  );
  Future   updateDataRowWithUplaod(   String id , File?file ,String? imagfileld  );
  Future   updateDataRowWithUplaodRepcament(   String id , File?file ,String? imagfileld  );

}