class ApiModel {
  int? id, userId;
  String? title, body;

  ApiModel({this.id, this.userId, this.title, this.body});

  ApiModel fromJson(Map m1) {
    id = m1['id'];
    userId = m1['userId'];
    title = m1['title'];
    body = m1['body'];

    ApiModel c1 = ApiModel(id: id, userId: userId,title: title,body: body);

    return c1;
  }
}
