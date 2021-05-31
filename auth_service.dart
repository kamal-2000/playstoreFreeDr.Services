import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth?.instance;

  Stream<String> get onAuthStateChanged => _firebaseAuth.onAuthStateChanged.map(
        (FirebaseUser user) => user?.uid,
      );

  // GET UID
  Future<String> getCurrentUID() async {
    return (await _firebaseAuth.currentUser()).uid;
  }

  CurrentUser() async {
    final FirebaseUser user = await _firebaseAuth.currentUser();
    final uid = user.uid;
    // Similarly we can get email as well
    //final uemail = user.email;
    print(uid);
    //print(uemail);
  }

  // GET CURRENT USER
  Future getCurrentUser() async {
    return await _firebaseAuth.currentUser();
  }

  // Email & Password Sign Up
  Future<String> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    final authResult = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Update the username
    await updateUserName(name, authResult.user);
    return authResult.user.uid;
  }

  // delete account

  Future deleteUser(String email, String password) async {
    FirebaseUser user = await _firebaseAuth.currentUser();

    await user.delete();
    print("Account is deleted");
    return true;
  }

  Future updateUserName(String name, FirebaseUser currentUser) async {
    var userUpdateInfo = UserUpdateInfo();
    userUpdateInfo.displayName = name;
    await currentUser.updateProfile(userUpdateInfo);
    await currentUser.reload();
  }

  Future updateNickName(String newName) async {
    var userInfo = new UserUpdateInfo();
    userInfo.displayName = newName;
  }

  // Email & Password Sign In
  Future<String> signInWithEmailAndPassword(
      String email, String password) async {
    return (await _firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password))
        .user
        .uid;
  }

  // Sign Out
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> updateDisplayName(String displayName) async {
    var user = await _firebaseAuth.currentUser();

    user.updateProfile(
      UserUpdateInfo()..displayName = displayName,
    );
  }
}
