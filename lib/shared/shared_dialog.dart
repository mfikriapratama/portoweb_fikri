part of 'shared.dart';

class SharedDialog {
  static SnackbarController successSnackBar(String title, String message) {
    return Get.snackbar(
      "",
      "",
      backgroundColor: successColor,
      icon: const Icon(
        Icons.check_circle_outline,
        color: Colors.white,
      ),
      titleText: Text(
        title,
        style: titleTextFont.copyWith(
            fontWeight: FontWeight.w600, color: Colors.white),
      ),
      messageText: Text(
        message,
        style: bodyTextFont.copyWith(color: Colors.white),
      ),
    );
  }

  static SnackbarController errorSnackBar(String title, String message) {
    return Get.snackbar(
      "",
      "",
      backgroundColor: errorColor,
      icon: const Icon(
        Icons.close_outlined,
        color: Colors.white,
      ),
      titleText: Text(
        title,
        style: titleTextFont.copyWith(
            fontWeight: FontWeight.w600, color: Colors.white),
      ),
      messageText: Text(
        message,
        style: bodyTextFont.copyWith(color: Colors.white),
      ),
    );
  }

  static Future confirmDialog(
      {required String title,
      required String message,
      VoidCallback? onOk,
      VoidCallback? onCancel}) {
    return Get.defaultDialog(
      title: title,
      titleStyle: titleTextFont.copyWith(fontWeight: FontWeight.bold),
      content: Column(
        children: [
          Icon(
            MdiIcons.informationOutline,
            size: 64.0,
            color: mainColor,
          ),
          Text(
            message,
            textAlign: TextAlign.center,
            style: bodyTextFont,
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: onCancel ?? () {
            Get.back();
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(width: 2, color: backgroundColor)),
              backgroundColor: Colors.white,
              elevation: 0.0,
              textStyle: bodyTextFont),
          child: const Text(
            SharedString.tidak,
            style: bodyTextFont,
          ),
        ),
        ElevatedButton(
          onPressed: onOk,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(width: 2, color: backgroundColor)),
              backgroundColor: mainColor,
              elevation: 0.0),
          child: Text(
            SharedString.ya,
            style: bodyTextFont.copyWith(color: Colors.white),
          ),
        )
      ],
      radius: 20.0,
    );
  }
}
