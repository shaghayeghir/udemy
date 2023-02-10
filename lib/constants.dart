import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const searchIcon='assets/icons/search.svg';
const loveIcon='assets/icons/love.svg';
const starIcon='assets/icons/star.svg';
const playIcon='assets/icons/play.svg';
const userIcon='assets/icons/user.svg';

mySvgIcon(icon){
  return SvgPicture.asset(
    icon,
    color: Colors.grey,
    width: 30,
    height: 30,
  );
}
mySelectedSvgIcon(icon){
  return SvgPicture.asset(
    icon,
    color: Colors.white,
    width: 30,
    height: 30,
  );
}
tabScreen(color,text){
  return Container(
    color: color,
    alignment: Alignment.center,
    child:  Text(text),
  );
}
