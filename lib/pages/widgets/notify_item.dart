import 'package:findingmotels/config_app/setting.dart';
import 'package:findingmotels/config_app/sizeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotifyItem extends StatelessWidget {
  final int index;
  final bool isMessage;
  final Function onTap;

  NotifyItem({this.index, this.isMessage, this.onTap});
  @override
  Widget build(BuildContext context) {
    return _item();
  }

  Widget _item() => Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(index == 0 ? 30.0 : 0.0)),
          color: AppColor.backgroundColor,
        ),
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: AppColor.whiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _itemImage(),
              _itemMessage(),
              Spacer(),
              _itemArrow(),
            ],
          ),
        ),
      );

  // Widget _item() {
  //   return Container(
  //     // color: AppColor.backgroundColor,
  //     padding: EdgeInsets.all(10.0),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(30.0),
  //       color: AppColor.backgroundColor,
  //     ),
  //     child: Container(
  //       padding: EdgeInsets.all(8.0),
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(30.0),
  //         color: AppColor.whiteColor,
  //       ),
  //       child: GestureDetector(
  //         onTap: () {
  //           if (onTap != null) onTap();
  //         },
  //         child: Container(
  //           padding: EdgeInsets.all(16.0),
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(30.0), color: Colors.white),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: <Widget>[
  //               _itemImage(),
  //               _itemMessage(),
  //               Spacer(),
  //               _itemArrow(),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget _itemArrow() => Container(
        padding: EdgeInsets.all(10.0),
        height: 48.0,
        width: 48.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.colorClipPath.withOpacity(0.2),
        ),
        child: Center(
          child: Icon(
            Icons.arrow_forward,
            size: 24.0,
            color: AppColor.colorClipPath,
          ),
        ),
      );

  Widget _itemMessage() => Container(
        margin: EdgeInsets.only(left: 16.0),
        child: Text(
          'You have Message',
          style: StyleText.subhead16GreenMixBlue,
        ),
      );

  Widget _itemImage() => Container(
        height: 48.0,
        width: 48.0,
        child: SvgPicture.asset(
            isMessage ? AppSetting.messageIconSvg : AppSetting.favoriteIconSvg),
      );
}
