
import 'package:e_services/pages/HomeScreen/index.dart';
import 'package:e_services/pages/Welcome/view.dart';
import 'package:e_services/res/Exceptions/app_exceptions.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
//that firebase class
class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance =>Get.find();
  //variables one for firebase authentication  and other for user authentication
 final _auth = FirebaseAuth.instance;
  late final Rx<User?>  firebaseUser;//we use late because we were not initialized on top
 @override
  void onReady(){
   //now  checking for  its authentication
   firebaseUser = Rx<User?>(_auth.currentUser);//Rx<User?>cost
   //now user can  fetch any change that occurs in firebase we give this user some stream
   //that user changes stream listening and  seeing user what he doing and inform the firebase
firebaseUser.bindStream(_auth.userChanges());
 //ever method which is  always ready to perform action
  ever(firebaseUser, _setInitialScreen);
 }
 _setInitialScreen(User ? user){
  user == null? Get.offAll(()=> WelcomeView()): Get.offAll(()=>HomeScreen());
 }
 //when user has been redirected and we get the user so  create weight method
Future<void> createUserWithEmailAndPassword(String email,String password)async {
  //that cloud statement that will throw an exception
 try{
 await _auth.createUserWithEmailAndPassword(email:email, password:password);
 firebaseUser.value!=null? Get.offAll(()=> HomeScreen()): Get.offAll(()=>WelcomeView());
}on FirebaseAuthException catch(e){
 final ex=SignUp_LoginException(e.code);
 //print statement to call file without exception
  print('FIREBASE AUTH EXCEPTION - ${ex._message}');
  throw ex;
 }catch(_){
  final ex=SignUp_LoginException();
  print('EXCEPTION - ${ex._message}');
  throw ex;
 }
 Future<void> loginWithEmailAndPassword(String email,String password)async {
  //that cloud statement that will throw an exception
  try{
   await _auth.signInWithEmailAndPassword(email:email, password:password);
  }on FirebaseAuthException catch(e){

  }catch(_){

  }
  Future<void> logout()async {
   await _auth.signOut();
  }
   }

 }



}