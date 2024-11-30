class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
// Sign In
  Future<User?> _signInWithPEmailAndPassword(String email,String password)async{
    try{
      UserCredential result = await _auth.signInwithEmailAndPassword(email:email,password:password),
      User? user = result.user;
      return user;

    }
    catch(e){
      print(e.ToString());
      return null;
    }
  }
//SignUp
Future<User?> _signUpwithEmailAndPassword(String email, String Password) async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password:Password),
      User?  user =result.user;
      return user;
    }
    catch(e){
      print(e.toString());
      return null;
  }
 }
 //SignOut

Future<User?> _signOut() async{
    try{
      return await _auth.signOut();
  }
  catch(e){
      print(e.toString());
      return null;
  }

 }
}