class RemoteBaseModel<T> {

  RemoteBaseModel({
    this.status,
    this.message,this.data
  });
  String? status;
  String? message;
T?data ;
  factory RemoteBaseModel.fromJson(Map<String, dynamic> json) {
    return RemoteBaseModel(
      status: json['status']??"" as String?,
      message: json['message']??"" as String?,
      data: json['data']??"" as T?,
    );
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data;
    return _data;
  }
}
