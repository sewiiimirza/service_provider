
import 'package:cloud_firestore/cloud_firestore.dart';

class ProviderModel{
  String ?id;
  final String providerName;
  final String phone;
  final String email;
  ProviderModel({
    this.id,
    required this.providerName,
    required this.phone,
    required this.email,
  });
    toJson(){
      return{
  'id':id,
  'name':providerName,
  'phone':phone,
  'email':email,
  };
    }
    factory ProviderModel.fromJson(
      DocumentSnapshot<Map<String , dynamic>>snapshot,
        ) {
final json= snapshot.data()!;
  return ProviderModel(
        id:json["id"],
       providerName:json["providerName"],
      phone:json["phone"],
           email:json["email"],
);
}

  }



