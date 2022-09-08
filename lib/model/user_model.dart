import 'dart:convert';

class UserModel {
  String uid;
  String birthday;
  String name;
  String sex;
  String eligibilityStatus;
  String fillStatus;
  UserModel({
    required this.uid,
    required this.birthday,
    required this.name,
    required this.sex,
    required this.eligibilityStatus,
    required this.fillStatus,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'uid': uid});
    result.addAll({'birthday': birthday});
    result.addAll({'name': name});
    result.addAll({'sex': sex});
    result.addAll({'eligibilityStatus': eligibilityStatus});
    result.addAll({'fillStatus': fillStatus});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      birthday: map['birthday'] ?? '',
      name: map['name'] ?? '',
      sex: map['sex'] == 0 ? 'Masculino' : 'Feminino',
      eligibilityStatus: map['eligibilityStatus'] == 'notEligible'
          ? 'Não Elegível'
          : map['eligibilityStatus'] == 'eligible'
              ? 'Elegível'
              : 'Pendente',
      fillStatus: map['fillStatus'] == 'finished' ? 'finalizado' : 'Parcial' '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
