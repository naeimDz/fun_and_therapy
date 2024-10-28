import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      padding: EdgeInsets.only(right: 17),
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    title: Text(
      'رجوع'.tr(),
      style: Theme.of(context).textTheme.bodyMedium,
    ),
  );
}
