import 'package:flutter/material.dart';

void printLog(String text) {
  debugPrint('\x1B[33m$text\x1B[0m');
}

void printError(String text) {
  debugPrint('\x1B[31m$text\x1B[0m');
}

void showCustomAlert({
  required BuildContext context,
  required String title,
  required String message,
  bool showNegativeButton = true,
  bool notification = false,
}) {
  showDialog(
      context: context,
      barrierDismissible: notification,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: SizedBox(
              height: 50,
              width: 100,
              child: Center(
                child: Image.asset("images/kanlian_logo.png")
              ),
            ),
            contentPadding: const EdgeInsets.all(10),
            content: SizedBox(
              height: 150,
              width: 100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    " $title!",
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          width: 80,
                          height: 30,
                          child: const Center(
                            child: Text(
                              'Ok',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        }),
                  )
                ],
              ),
            ),
          ),
        );
      });
}