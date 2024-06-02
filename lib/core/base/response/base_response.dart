// @JsonSerializable()
// class BaseResponse {
//   @JsonKey (name : "status")   // will be the same name from response in backend
//   int? status ; 
//   @JsonKey (name : "message") 
//   String? message; 
// }


// @JsonSerializable()
// class CustomerResponse {
//   @JsonKey (name : "id")   // will be the same name from response in backend
//   String? id ; 
//   @JsonKey (name : "email") 
//   String? email; 
//   @JsonKey (name : "not") 
//   String? not; 
// }

// @JsonSerializable()
// class ContactResponse {
//   @JsonKey (name : "name")   // will be the same name from response in backend
//   String? name ; 
//   @JsonKey (name : "email") 
//   String? email; 
//   @JsonKey (name : "phone") 
//   String? phone; 
// }


// class AuthenticationResponse extends BaseResponse{
//    @JsonKey (name : "customer")   // will be the same name from response in backend
//   CustomerResponse? customer ; 
//   @JsonKey (name : "email") 
//   ContactResponse? contact; 
// }