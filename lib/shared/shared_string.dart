part of 'shared.dart';

class SharedString {
  static const String signIn = "Sign In";
  static const String signUp = "Sign Up";
  static const String register = "Register";
  static const String update = "Update";
  static const String delete = "Delete";
  static const String signOutInfo = "Sign Out";
  static const String password = "Password";
  static const String passwordForgot = "Forgot Password?";
  static const String userId = "User Id";
  static const String email = "Email";
  static const String nik = "NIK";

  static const String assetName = 'Asset Name';
  static const String assetNo = 'Asset Number';
  static const String assetDesc = 'Asset Description';
  static const String assetCategory = 'Asset Category';
  static const String branch = 'Branch';
  static const String outlet = 'Outlet';

  static const String token = "Input Token";
  static const String roles = "Role";
  static const String joindate = "Join Date";
  static const String gender = "Gender";
  static const String ticketid = "Ticket ID";
  static const String menu = "Menu";
  static const String aktivitas = "Activity";
  static const String profil = "Profil";
  static const String actResume = "Activity Resume";
  static const String period = "Period";
  static const String openaktivitas = "Select Open Activity";
  static const String pendingactivity = "Activity Pending";
  static const String detailactivity = "Detail Activity";
  static const String doclist = "Document List";
  static const String actOpen = "Activity Open";
  static const String actProject = "Activity By Project";
  static const String actSquad = "Activity By Squad";
  static const String logout = "Logout";
  static const String login = "Login";
  static const String exit = "Exit";
  static const String backButtonMessage = "Press again to exit";
  static const String back = "Kembali";
  static const String fill = "Fill the blank field";
  static const String choose = "Select date or period";
  static const String changepass = "Change Password";
  static const String resetpass = "Reset Password";
  static const String extpass = "Existing Password";
  static const String newpass = "New Password";
  static const String valpass = "Confirm Password";
  static const String squadmember = "Squad Member";
  static const String checkStatusReg = 'Cek Status Pendaftaran';
  static const String open = "Open";
  static const String close = "Close";
  static const String status = "Status";
  static const String aktif = "Aktif";
  static const String tidakaktif = "Tidak Aktif";
  static const String cancel = "Batal";
  static const String ok = "Ok";
  static const String yes = "Yes";
  static const String no = "No";
  static const String ya = "Ya";
  static const String tidak = "Tidak";

//Snackbar Message
  static const String emptyEntry = "Fill all data";
  static const String incorrectEntry =
      "The user id or password you entered is incorrect";
  static const String successEntry = "Data added successfully";
  static const String successDelete = "Data deleted successfully";
  static const String connectionFailed = "Connection Failed";
  static const String signInFailed = "Sign In Failed";
  static const String tryagain = "Try Again";
  static const String success = "Success";
  static const String failed = "Failed";
  static const String error = "Error, Please Try Again";
  static const String soon = "Coming Soon";
  static const String allow = "Allow Permission";
  static const String registerFailed = "Registration Failed";
  static const String registerSuccess = "Registration Success";
  static const String updated = "Data Updated";

  //KETERANGAN
  static const String submit = "Submit";
  static const String wrongMessage = "An error occurred while retrieving data";
  static const String changePassSuccess = "Password changed successfully";
  static const String reLogin = "Session time out. Please re-login";
  static const String isianwajib = "Data wajib diisi";
  static const String dataKosong = "Data Kosong";
  static const String unRecognized = "Pengguna Tidak Dikenal";

  //HINTS
  static const String userIdHint = "Input Your User Id";
  static const String passHint = "Input Your Password";
  static const String assetNoHint = "Input Asset Number";
  static const String assetNameHint = "Input Asset Name";
  static const String assetDescHint = "Input Asset Description";

  static String getInitials(String text) {
    String initials = "";
    if (!text.trim().contains(" ")) {
      if (text.length > 2) {
        initials = text.substring(0, 2);
      } else {
        initials = text.substring(0, 1);
      }
    } else {
      List<String> names = text.split(" ");
      for (var i = 0; i < 2; i++) {
        initials += names[i][0];
      }
    }

    return initials;
  }

  static String getGender({String? gender}) {
    if (gender == "M") {
      return "Pria";
    } else if (gender == "") {
      return "-";
    } else {
      return "Wanita";
    }
  }
}
