class PhotoModel {
  int? id, userId;
  String? title, body;

  PhotoModel({this.id, this.userId, this.title, this.body});

  PhotoModel fromJson(Map m1) {
    id = m1['id'];
    userId = m1['userId'];
    title = m1['title'];
    body = m1['body'];

    PhotoModel c1 = PhotoModel(id: id, userId: userId,title: title,body: body);

    return c1;
  }
}
