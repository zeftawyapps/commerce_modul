import 'package:cloud_firestore/cloud_firestore.dart';

import '../../utilis/models/base_data_model.dart';

abstract class IQuizFirebaseStreamSource<T extends IBaseDataModel   > {
  T? data;
  Stream<List<T>> getAllDataStream();
  Stream<T> getDataRowStream(String id);
  Stream<List<T>> getDataStream( Query   query);
}