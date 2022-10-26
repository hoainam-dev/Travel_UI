// // Hiên thị Mk , nếu _showPass = true thì hiển thị và ngược lại
// void onToggleShowPass() {
//   setState(() {
//     _showPass = !_showPass;
//   });
// }
//
// // Khi nhấn login
// void onSignInClick() {
//   setState(() {
//     if (emailController.text.length < 6 ||
//         !emailController.text.contains("@")) {
//       _userInvalid = true;
//       // Nếu chuỗi kí tự nhập vào nhỏ hơn  6 hoặc  có chưa kí tự @ thì là lỗi Invalid = true
//     } else {
//       _userInvalid = false;
//     }
//     // MK nhập vào nhỏ hơn 6 kí tự thì co lỗi
//     if (passwordController.text.length < 6) {
//       _passInvalid = true;
//     } else {
//       _passInvalid = false;
//     }
//     // cả User name và MK đều đúng thì chuyển sang trang Home
//     if (!_userInvalid && !_passInvalid) {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => SignUp()));
//     }
//   });
// }