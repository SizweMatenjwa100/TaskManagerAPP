class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> _signInWithPassword(String email,String password)async{
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

}