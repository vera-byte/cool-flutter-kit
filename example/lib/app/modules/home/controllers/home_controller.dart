/*
 * @Author: vera
 * @Date: 2022-10-10 17:17:17
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/example/lib/app/modules/home/controllers/home_controller.dart
 * @LastEditTime: 2022-10-15 21:16:56
 * @Description: 描述信息
 * @Version: 1.0.0
 */
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

/// 每一组
class GroupWidgetListGroupItem {
  const GroupWidgetListGroupItem({required this.widgets, required this.group});
  final String group;
  final List<GroupWidgetListItem> widgets;
}

/// 分组每一项Widget
class GroupWidgetListItem {
  const GroupWidgetListItem({
    required this.name,
    required this.path,
  });
  final String name;
  final String path;
}

class HomeController extends GetxController {
  List<PersistentBottomNavBarItem> listNavBar = [
    PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.rocket, size: 20), title: '首页'),
    PersistentBottomNavBarItem(
        icon: const Icon(FontAwesomeIcons.user, size: 20), title: '我的')
  ];
  // 菜单
  final List<GroupWidgetListGroupItem> groupWidgetList = [
    const GroupWidgetListGroupItem(group: '基础Widget', widgets: [
      GroupWidgetListItem(name: 'Button 按钮', path: 'button'),
      GroupWidgetListItem(name: 'Text 文本', path: 'text'),
      GroupWidgetListItem(name: 'Image 图片', path: 'image'),
      GroupWidgetListItem(name: 'Icon 图标', path: 'icon'),
      GroupWidgetListItem(name: 'Tag 标签', path: 'tag'),
      GroupWidgetListItem(name: 'Toast 提示', path: 'toast'),
      GroupWidgetListItem(name: 'Loading 标签', path: 'loading'),
    ]),
    const GroupWidgetListGroupItem(group: '表单Widget', widgets: [
      GroupWidgetListItem(name: 'Input 输入框', path: 'input'),
      GroupWidgetListItem(name: 'InputNumber 计数器', path: 'input-number'),
      GroupWidgetListItem(name: 'Textarea 文本域', path: 'textarea'),
      GroupWidgetListItem(name: 'Checkbox 多选框', path: 'check-box'),
      GroupWidgetListItem(name: 'Radio 单选框', path: 'radio'),
      GroupWidgetListItem(name: 'Select 下拉框', path: 'select'),
      GroupWidgetListItem(name: 'Rate 评分', path: 'rate'),
      GroupWidgetListItem(name: 'Switch 开关', path: 'switch'),
      GroupWidgetListItem(name: 'Upload 文件上传', path: 'upload'),
      GroupWidgetListItem(name: 'Form 表单', path: 'form'),
    ]),
    const GroupWidgetListGroupItem(group: '视图Widget', widgets: [
      GroupWidgetListItem(name: 'Avatar 头像', path: 'avatar'),
      GroupWidgetListItem(name: 'Badge 角标', path: 'badge'),
      GroupWidgetListItem(name: 'Banner 轮播图', path: 'banner'),
      GroupWidgetListItem(name: 'Card 卡片', path: 'card'),
      GroupWidgetListItem(name: 'Countdown 倒计时', path: 'count-down'),
      GroupWidgetListItem(name: 'Divder 分割线', path: 'divder'),
      GroupWidgetListItem(name: 'Flex 弹性', path: 'flex'),
      GroupWidgetListItem(name: 'Grid 宫格', path: 'grid'),
      GroupWidgetListItem(name: 'List 列表', path: 'list'),
      GroupWidgetListItem(name: 'Loadmore 加载更多', path: 'load-more'),
      GroupWidgetListItem(name: 'Noticebar 通知栏', path: 'noticebar'),
      GroupWidgetListItem(name: 'Popup 弹出框', path: 'popup'),
      GroupWidgetListItem(name: 'Progress 进度条', path: 'progress'),
      GroupWidgetListItem(name: 'Search 搜索框', path: 'search'),
      GroupWidgetListItem(name: 'Slider 滑块', path: 'slider'),
      GroupWidgetListItem(name: 'Tabs 选项卡', path: 'tabs'),
      GroupWidgetListItem(name: 'Timeline 时间线', path: 'time-line'),
      GroupWidgetListItem(name: 'Topbar 顶部导航', path: 'top-bar'),
      GroupWidgetListItem(name: 'Waterfall 瀑布流', path: 'waterfall'),
    ]),
    const GroupWidgetListGroupItem(group: '高级Widget', widgets: [
      GroupWidgetListItem(name: 'ActionSheet 操作菜单', path: 'action-sheet'),
      GroupWidgetListItem(name: 'Captcha 验证码', path: 'captcha'),
      GroupWidgetListItem(name: 'Confirm 确认框', path: 'confirm'),
      GroupWidgetListItem(name: 'Dialog 对话框', path: 'dialog'),
      GroupWidgetListItem(name: 'FilterBar 过滤栏', path: 'filter-bar'),
    ]),
    const GroupWidgetListGroupItem(group: '扩展Widget', widgets: [
      GroupWidgetListItem(name: 'Share 分享', path: 'share'),
      GroupWidgetListItem(name: 'WebviewBridge H5桥', path: 'webview-bridge'),
      GroupWidgetListItem(name: 'posters 海报', path: 'posters'),
    ]),
    const GroupWidgetListGroupItem(group: 'Api', widgets: [
      GroupWidgetListItem(name: 'HttpRequest 网络请求', path: 'request'),
      GroupWidgetListItem(name: 'WechatPay 微信支付', path: 'wechat-pay'),
      GroupWidgetListItem(name: 'AliPay 支付宝支付', path: 'ali-pay'),
    ]),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
