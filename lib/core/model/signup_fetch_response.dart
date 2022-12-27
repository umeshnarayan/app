class SignupfetchResponse {
  String? id;
  String? name;
  String? emailId;
  String? password;
  String? phone;


  SignupfetchResponse(
      {this.id, this.name, this.emailId, this.password, this.phone});

  SignupfetchResponse.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    emailId = json['EmailId'];
    password = json['password'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['EmailId'] = this.emailId;
    data['password'] = this.password;
    data['phone'] = this.phone;
    return data;
  }
}