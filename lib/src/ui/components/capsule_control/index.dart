import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CapsuleControl extends StatelessWidget {
  /// 胶囊左侧点击
  final GestureTapCallback? leftOnTap;

  /// 胶囊右侧点击
  final GestureTapCallback? rightOnTap;

  const CapsuleControl({
    Key? key,
    this.leftOnTap,
    this.rightOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.31),
        border: Border.all(
          color: const Color.fromRGBO(237, 237, 237, 1),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: InkWell(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                onTap: leftOnTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      margin: const EdgeInsets.all(4),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 16,
            width: 1,
            color: const Color.fromRGBO(241, 241, 241, 1),
          ),
          Expanded(
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: InkWell(
                onTap: rightOnTap,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
