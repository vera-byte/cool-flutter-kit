/*
 * @Author: vera
 * @Date: 2022-10-10 17:17:17
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/example/lib/app/modules/home/controllers/home_controller.dart
 * @LastEditTime: 2022-10-15 16:46:24
 * @Description: 描述信息
 * @Version: 1.0.0
 */
import 'package:get/get.dart';

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
  final List<GroupWidgetListGroupItem> groupWidgetList = [
    const GroupWidgetListGroupItem(group: '基础Widget', widgets: [
      GroupWidgetListItem(name: 'Button 按钮', path: ''),
      GroupWidgetListItem(name: 'Text 文本', path: ''),
      GroupWidgetListItem(name: 'Image 图片', path: ''),
      GroupWidgetListItem(name: 'Icon 图标', path: ''),
      GroupWidgetListItem(name: 'Tag 标签', path: ''),
      GroupWidgetListItem(name: 'Toast 提示', path: ''),
      GroupWidgetListItem(name: 'Loading 标签', path: ''),
    ]),
    const GroupWidgetListGroupItem(group: '表单Widget', widgets: [
      GroupWidgetListItem(name: 'Input 输入框', path: ''),
      GroupWidgetListItem(name: 'InputNumber 计数器', path: ''),
      GroupWidgetListItem(name: 'Textarea 文本域', path: ''),
      GroupWidgetListItem(name: 'Checkbox 多选框', path: ''),
      GroupWidgetListItem(name: 'Radio 单选框', path: ''),
      GroupWidgetListItem(name: 'Select 下拉框', path: ''),
      GroupWidgetListItem(name: 'Rate 评分', path: ''),
      GroupWidgetListItem(name: 'Switch 开关', path: ''),
      GroupWidgetListItem(name: 'Upload 文件上传', path: ''),
      GroupWidgetListItem(name: 'Form 表单', path: ''),
    ]),
    const GroupWidgetListGroupItem(group: '视图Widget', widgets: [
      GroupWidgetListItem(name: 'Avatar 头像', path: ''),
      GroupWidgetListItem(name: 'Badge 角标', path: ''),
      GroupWidgetListItem(name: 'Banner 轮播图', path: ''),
      GroupWidgetListItem(name: 'Card 卡片', path: ''),
      GroupWidgetListItem(name: 'Countdown 倒计时', path: ''),
      GroupWidgetListItem(name: 'Divder 分割线', path: ''),
      GroupWidgetListItem(name: 'Flex 弹性', path: ''),
      GroupWidgetListItem(name: 'Grid 宫格', path: ''),
      GroupWidgetListItem(name: 'List 列表', path: ''),
      GroupWidgetListItem(name: 'Loadmore 加载更多', path: ''),
      GroupWidgetListItem(name: 'Noticebar 通知栏', path: ''),
      GroupWidgetListItem(name: 'Popup 弹出框', path: ''),
      GroupWidgetListItem(name: 'Progress 进度条', path: ''),
      GroupWidgetListItem(name: 'Search 搜索框', path: ''),
      GroupWidgetListItem(name: 'Slider 滑块', path: ''),
      GroupWidgetListItem(name: 'Tabs 选项卡', path: ''),
      GroupWidgetListItem(name: 'Timeline 时间线', path: ''),
      GroupWidgetListItem(name: 'Topbar 顶部导航', path: ''),
      GroupWidgetListItem(name: 'Waterfall 瀑布流', path: ''),
    ]),
    const GroupWidgetListGroupItem(group: '高级Widget', widgets: [
      GroupWidgetListItem(name: 'ActionSheet 操作菜单', path: ''),
      GroupWidgetListItem(name: 'Captcha 验证码', path: ''),
      GroupWidgetListItem(name: 'Confirm 确认框', path: ''),
      GroupWidgetListItem(name: 'Dialog 对话框', path: ''),
      GroupWidgetListItem(name: 'FilterBar 过滤栏', path: ''),
    ]),
    const GroupWidgetListGroupItem(group: '扩展Widget', widgets: [
      GroupWidgetListItem(name: 'Share 分享', path: ''),
      GroupWidgetListItem(name: 'WebviewBridge H5桥', path: ''),
    ]),
    const GroupWidgetListGroupItem(group: 'Api', widgets: [
      GroupWidgetListItem(name: 'HttpRequest 网络请求', path: ''),
      GroupWidgetListItem(name: 'WechatPay 微信支付', path: ''),
      GroupWidgetListItem(name: 'AliPay 支付宝支付', path: ''),
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
