import 'package:flutter/material.dart';

navigate({
  required BuildContext context,
  required Widget page,
}) {
  Navigator.of(context).push(
    PageRouteBuilder(
        pageBuilder: (context,animation,_) => FadeTransition(
              opacity: animation,
              child: page,
            ),
        ),
  );
}

navigatePop({
  required BuildContext context,
}){
  Navigator.of(context).pop();
}
