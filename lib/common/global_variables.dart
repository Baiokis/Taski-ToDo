import 'dart:ui';

import 'package:flutter/material.dart';

//Colors
const color_blue = Color(0xff007FFF);
const color_softBlue = Color(0xffe6f2ff);
const color_white = Color(0xffffffff);
const color_backgroundCard = Color(0xfff5f7f9);
const color_textGrey = Color(0xffa9b5ca);
const color_red = Color(0xfffd5e5e);
const color_darkgrey = Color(0xff3F3D56);

//Assets
const font = 'Urbanist';

const logo = 'assets/images/logo.svg';
const note = 'assets/images/note.svg';
const create = 'assets/images/create.svg';
const delete = 'assets/images/delete.svg';
const checkBox = 'assets/images/checkbox.svg';
const checkBoxEmpty = 'assets/images/checkbox_empty.svg';
const done = 'assets/images/done.svg';
const search = 'assets/images/search.svg';
const tablePicture = 'assets/images/tablePicture.svg';
const todo = 'assets/images/todo.svg';
const reticence = 'assets/images/reticence.svg';
const plus = 'assets/images/plus.svg';

//Text Styles
const TextStyle textHeader = TextStyle(
  fontSize: 20,
  fontFamily: font,
  fontWeight: FontWeight.w400,
);

const TextStyle textTodoPageName = TextStyle(
  fontFamily: font,
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: color_blue,
);

const TextStyle textTodoPageWelcome = TextStyle(
  fontFamily: font,
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: color_darkgrey,
);

const TextStyle textTodoPageDot = TextStyle(
  fontFamily: font,
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: color_darkgrey,
);

const TextStyle textTodoPageSubTitle = TextStyle(
  fontFamily: font,
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: color_textGrey,
);

const TextStyle textTaskCardTitle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: color_darkgrey,
);

const TextStyle textTaskCardDescription = TextStyle(
  fontSize: 14,
  color: color_textGrey,
);

const TextStyle textTodoPageEmptyButton = TextStyle(
  color: color_blue,
  fontSize: 16,
  fontWeight: FontWeight.w700,
  fontFamily: font,
);

const TextStyle textTodoPageEmptyMessage = TextStyle(
  color: color_textGrey,
  fontSize: 16,
  fontFamily: font,
);
