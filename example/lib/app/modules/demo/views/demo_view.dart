/*
 * @Author: June
 * @Date: 2022-10-11 11:57:57
 * @Filename: {{put-file-name}}
 * @FilePath: /maile_app_flutter/lib/app/modules/demo/views/demo_view.dart
 * @LastEditTime: 2022-10-13 00:32:34
 * @Description: 描述信息
 * @Version: 1.0.0
 */
import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/demo_controller.dart';

class DemoView extends GetView<DemoController> {
  const DemoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('DemoView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          for (var i = 0; i < 10; i++) const CarCardItem(),
          CardTitleTitleMore(
            title: "店铺线索",
            slotWidgets: [
              BrnEnhanceNumberCard(
                itemChildren: [
                  BrnNumberInfoItemModel(
                    title: '新线索待处理',
                    number: '3',
                  ),
                  BrnNumberInfoItemModel(
                    title: '迈了精准线索',
                    number: '3',
                  ),
                  BrnNumberInfoItemModel(
                    title: '店长特权线索',
                    number: '3',
                  ),
                  BrnNumberInfoItemModel(
                    title: '潜在线索',
                    number: '3',
                  )
                ],
              ),
            ],
          ),
          CardTitleTitleMore(
            title: "车源管理",
            slotWidgets: [
              BrnEnhanceNumberCard(
                itemTextAlign: TextAlign.center,
                itemChildren: [
                  BrnNumberInfoItemModel(
                    title: '我的车源',
                    number: '--',
                  ),
                  BrnNumberInfoItemModel(
                    title: '已售出',
                    number: '3',
                  ),
                  BrnNumberInfoItemModel(
                    title: '已下架',
                    number: '3',
                  ),
                ],
              ),
            ],
          ),
          CardTitleTitleMore(
            title: "求购管理",
            slotWidgets: [
              BrnEnhanceNumberCard(
                itemChildren: [
                  BrnNumberInfoItemModel(
                    title: '求购中',
                    number: '--',
                  ),
                  BrnNumberInfoItemModel(
                    title: '已下架',
                    number: '3',
                  ),
                ],
              ),
            ],
          ),
          BrnShareActionSheet(
            firstShareChannels: handleFirstShare(),
            secondShareChannels: handleSecondShare(),
            clickCallBack: (int section, int index, BrnShareItem shareItem) {
              int channel = shareItem.shareType;
              BrnToast.show(
                  "channel: $channel, section: $section, index: $index",
                  context);
            },
            clickInterceptor: (int section, int index, BrnShareItem shareItem) {
              if (shareItem.canClick) {
                return false;
              } else {
                BrnToast.show("不可点击，拦截了", context);
                return true;
              }
            },
          )
        ],
      ),
    );
  }

  handleFirstShare() {
    List<BrnShareItem> firstRowList = [];
    firstRowList.add(BrnShareItem(
      BrnShareItemConstants.shareQZone,
      canClick: true,
    ));
    firstRowList.add(BrnShareItem(
      BrnShareItemConstants.shareSaveImage,
      canClick: true,
    ));
    firstRowList.add(BrnShareItem(
      BrnShareItemConstants.shareSms,
      canClick: true,
    ));
    firstRowList.add(BrnShareItem(
      BrnShareItemConstants.shareWeiBo,
      canClick: true,
    ));
  }

  handleSecondShare() {
    List<BrnShareItem> secondRowList = [];
    secondRowList.add(BrnShareItem(
      BrnShareItemConstants.shareQZone,
      canClick: true,
    ));
    secondRowList.add(BrnShareItem(
      BrnShareItemConstants.shareSaveImage,
      canClick: true,
    ));
    secondRowList.add(BrnShareItem(
      BrnShareItemConstants.shareSms,
      canClick: true,
    ));
    secondRowList.add(BrnShareItem(
      BrnShareItemConstants.shareWeiBo,
      canClick: true,
    ));
    return secondRowList;
  }
}

class CardTitleTitleMore extends StatelessWidget {
  const CardTitleTitleMore({
    Key? key,
    required this.slotWidgets,
    this.title = "Title",
    this.subTitle = "查看更多",
    this.isHideSubTitle = false,
  }) : super(key: key);
  // 插入slotWidgets
  final List<Widget> slotWidgets;
  // 标题
  final String title;
  // 子标题 描述等
  final String subTitle;
  // 隐藏子标题
  final bool isHideSubTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.only(bottom: 12),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              // height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  Row(
                    children: [
                      Text(
                        subTitle,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(148, 152, 163, 1),
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 16,
                        color: Color.fromRGBO(148, 152, 163, 1),
                      )
                    ],
                  )
                ],
              ),
            ),
            ...slotWidgets
          ],
        ));
  }
}

// 车源卡片
class CarCardItem extends StatelessWidget {
  const CarCardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //不添加click是没有效果的
        print('click');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        width: Get.width,
        height: true ? 175 : 158,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 图片
            const CarCardCover(
              cover:
                  'https://oss.mailecar.com/test/1665457869568_maile/car_watermark',
            ),
            SizedBox(
              width: 12,
              height: Get.height,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // 标题
                  CarCardTitle(
                    title: "奥迪Q3 2018款 30周年年型 0TFSI 时尚型",
                    isNew: true,
                    isDrop: false,
                  ),
                  // 公里 车龄 距离
                  CarCardUse(),
                  // 标签
                  CarCardTag(
                    tags: "4S店直卖,0过户,维保可查",
                    isWholesale: true,
                  ),
                  CarCardPrice(),
                  CarCardBtn()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 询底价
class CarCardBtn extends StatelessWidget {
  const CarCardBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () => print("询底价"),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(235, 241, 254, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              height: 28,
              width: 42,
              child: const Center(
                child: Text(
                  '询底价',
                  style: TextStyle(
                      color: Color.fromRGBO(39, 112, 244, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CarCardPrice extends StatelessWidget {
  const CarCardPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 价格
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // 零售
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "零售",
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(148, 152, 163, 1)),
                    ),
                    TextSpan(
                      text: "17.98",
                      style: TextStyle(
                        fontFamily: "DIN_Alternate",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(250, 87, 65, 1),
                      ),
                    ),
                    TextSpan(
                      text: "万",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(250, 87, 65, 1),
                      ),
                    ),
                  ],
                ),
              ),
              // 原价
              Text(
                "原价10.5万",
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 10,
                  color: Color.fromRGBO(148, 152, 163, 1),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // 批发
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "批发价",
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(148, 152, 163, 1)),
                    ),
                    TextSpan(
                      text: "17.98",
                      style: TextStyle(
                        fontFamily: "DIN_Alternate",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(250, 87, 65, 1),
                      ),
                    ),
                    TextSpan(
                      text: "万",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(250, 87, 65, 1),
                      ),
                    ),
                  ],
                ),
              ),
              // 新车指导价
              Text(
                "新车指导价10.5万",
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 10,
                  color: Color.fromRGBO(148, 152, 163, 1),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class CarCardUse extends StatelessWidget {
  const CarCardUse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: 10,
          color: Color.fromRGBO(148, 152, 163, 1),
          fontWeight: FontWeight.w600,
        ),
        children: [
          TextSpan(text: "4.08万"),
          TextSpan(text: " / "),
          TextSpan(text: "3年1个月"),
          TextSpan(text: " / "),
          TextSpan(text: "距您3.3km"),
        ],
      ),
    );
  }
}

class CarCardTag extends StatelessWidget {
  // 是否批发
  final bool isWholesale;
  // 标签
  final String tags;
  const CarCardTag({
    Key? key,
    required this.isWholesale,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26,
      width: Get.width,
      child: Row(
        children: handleTag(tags, isWholesale),
      ),
    );
  }

  List<Widget> handleTag(String tags, bool isWholesale) {
    List<Widget> listWidget = [];
    if (isWholesale) {
      listWidget.add(
        Container(
          margin: const EdgeInsets.only(right: 4),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(2),
            ),
          ),
          child: Image.asset(
            width: 35,
            height: 15,
            "assets/icons/wholesale.png",
            fit: BoxFit.cover,
          ),
        ),
      );
    }
    for (var e in tags.split(',')) {
      {
        listWidget.add(
          Container(
            margin: const EdgeInsets.only(right: 4),
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(242, 243, 250, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            child: Text(
              e,
              style: const TextStyle(
                fontSize: 10,
                color: Color.fromRGBO(108, 112, 123, 1),
              ),
            ),
          ),
        );
      }
    }

    return listWidget;
  }
}

/// 封面Widget
class CarCardCover extends StatelessWidget {
  /// 封面图
  final String cover;
  final String price;
  final bool isDrop;
  const CarCardCover(
      {Key? key, required this.cover, this.price = "2.0", this.isDrop = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 99,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Get.width,
            height: 74,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
                width: Get.width, height: 74, fit: BoxFit.fill, cover),
          ),
          if (isDrop)
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 4),
                  child: Image.asset(
                      width: 12,
                      height: 12,
                      fit: BoxFit.fill,
                      "assets/icons/descend.png"),
                ),
                Text(
                  "降价$price万元",
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w600),
                )
              ],
            )
        ],
      ),
    );
  }
}

class CarCardTitle extends StatelessWidget {
  const CarCardTitle({
    Key? key,
    required this.isNew,
    required this.isDrop,
    required this.title,
  }) : super(key: key);

  /// 是否新
  final bool isNew;

  /// 是否降
  final bool isDrop;

  /// 标题
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 41,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text.rich(
              TextSpan(
                children: [
                  if (isDrop)
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 3, bottom: 2),
                        child: Image.asset(
                          "assets/icons/car_new.png",
                          width: 14,
                          height: 14,
                        ),
                      ),
                    ),
                  if (isNew)
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 3, bottom: 2),
                        child: Image.asset(
                          "assets/icons/car_new.png",
                          width: 14,
                          height: 14,
                        ),
                      ),
                    ),
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
