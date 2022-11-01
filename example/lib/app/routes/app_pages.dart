import 'package:get/get.dart';

import '../modules/action-sheet/bindings/action_sheet_binding.dart';
import '../modules/action-sheet/views/action_sheet_view.dart';
import '../modules/ali-pay/bindings/ali_pay_binding.dart';
import '../modules/ali-pay/views/ali_pay_view.dart';
import '../modules/avatar/bindings/avatar_binding.dart';
import '../modules/avatar/views/avatar_view.dart';
import '../modules/badge/bindings/badge_binding.dart';
import '../modules/badge/views/badge_view.dart';
import '../modules/banner/bindings/banner_binding.dart';
import '../modules/banner/views/banner_view.dart';
import '../modules/button/bindings/button_binding.dart';
import '../modules/button/views/button_view.dart';
import '../modules/captcha/bindings/captcha_binding.dart';
import '../modules/captcha/views/captcha_view.dart';
import '../modules/card/bindings/card_binding.dart';
import '../modules/card/views/card_view.dart';
import '../modules/check-box/bindings/check_box_binding.dart';
import '../modules/check-box/views/check_box_view.dart';
import '../modules/confirm/bindings/confirm_binding.dart';
import '../modules/confirm/views/confirm_view.dart';
import '../modules/count-down/bindings/count_down_binding.dart';
import '../modules/count-down/views/count_down_view.dart';
import '../modules/demo/bindings/demo_binding.dart';
import '../modules/demo/views/demo_view.dart';
import '../modules/dialog/bindings/dialog_binding.dart';
import '../modules/dialog/views/dialog_view.dart';
import '../modules/divder/bindings/divder_binding.dart';
import '../modules/divder/views/divder_view.dart';
import '../modules/filter-bar/bindings/filter_bar_binding.dart';
import '../modules/filter-bar/views/filter_bar_view.dart';
import '../modules/flex/bindings/flex_binding.dart';
import '../modules/flex/views/flex_view.dart';
import '../modules/form/bindings/form_binding.dart';
import '../modules/form/views/form_view.dart';
import '../modules/git/bindings/git_binding.dart';
import '../modules/git/views/git_view.dart';
import '../modules/grid/bindings/grid_binding.dart';
import '../modules/grid/views/grid_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/icon/bindings/icon_binding.dart';
import '../modules/icon/views/icon_view.dart';
import '../modules/image/bindings/image_binding.dart';
import '../modules/image/views/image_view.dart';
import '../modules/index/bindings/index_binding.dart';
import '../modules/index/views/index_view.dart';
import '../modules/input-number/bindings/input_number_binding.dart';
import '../modules/input-number/views/input_number_view.dart';
import '../modules/input/bindings/input_binding.dart';
import '../modules/input/views/input_view.dart';
import '../modules/list/bindings/list_binding.dart';
import '../modules/list/views/list_view.dart';
import '../modules/load-more/bindings/load_more_binding.dart';
import '../modules/load-more/views/load_more_view.dart';
import '../modules/loading/bindings/loading_binding.dart';
import '../modules/loading/views/loading_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/noticebar/bindings/noticebar_binding.dart';
import '../modules/noticebar/views/noticebar_view.dart';
import '../modules/popup/bindings/popup_binding.dart';
import '../modules/popup/views/popup_view.dart';
import '../modules/posters/bindings/posters_binding.dart';
import '../modules/posters/views/posters_view.dart';
import '../modules/progress/bindings/progress_binding.dart';
import '../modules/progress/views/progress_view.dart';
import '../modules/radio/bindings/radio_binding.dart';
import '../modules/radio/views/radio_view.dart';
import '../modules/request/bindings/request_binding.dart';
import '../modules/request/views/request_view.dart';
import '../modules/rete/bindings/rete_binding.dart';
import '../modules/rete/views/rete_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/select/bindings/select_binding.dart';
import '../modules/select/views/select_view.dart';
import '../modules/share/bindings/share_binding.dart';
import '../modules/share/views/share_view.dart';
import '../modules/slider/bindings/slider_binding.dart';
import '../modules/slider/views/slider_view.dart';
import '../modules/switch/bindings/switch_binding.dart';
import '../modules/switch/views/switch_view.dart';
import '../modules/tabs/bindings/tabs_binding.dart';
import '../modules/tabs/views/tabs_view.dart';
import '../modules/tag/bindings/tag_binding.dart';
import '../modules/tag/views/tag_view.dart';
import '../modules/text/bindings/text_binding.dart';
import '../modules/text/views/text_view.dart';
import '../modules/textarea/bindings/textarea_binding.dart';
import '../modules/textarea/views/textarea_view.dart';
import '../modules/time-line/bindings/time_line_binding.dart';
import '../modules/time-line/views/time_line_view.dart';
import '../modules/toast/bindings/toast_binding.dart';
import '../modules/toast/views/toast_view.dart';
import '../modules/top-bar/bindings/top_bar_binding.dart';
import '../modules/top-bar/views/top_bar_view.dart';
import '../modules/upload/bindings/upload_binding.dart';
import '../modules/upload/views/upload_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';
import '../modules/waterfall/bindings/waterfall_binding.dart';
import '../modules/waterfall/views/waterfall_view.dart';
import '../modules/webview-bridge/bindings/webview_bridge_binding.dart';
import '../modules/webview-bridge/views/webview_bridge_view.dart';
import '../modules/wechat-pay/bindings/wechat_pay_binding.dart';
import '../modules/wechat-pay/views/wechat_pay_view.dart';

/*
 * @Author: vera
 * @Date: 2022-10-10 17:19:24
 * @Filename: {{put-file-name}}
 * @FilePath: /maile_app_flutter/lib/app/routes/app_pages.dart
 * @LastEditTime: 2022-10-11 11:58:52
 * @Description: 描述信息
 * @Version: 1.0.0
 */

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DEMO,
      page: () => const DemoView(),
      binding: DemoBinding(),
    ),
    GetPage(
      name: _Paths.INDEX,
      page: () => const IndexView(),
      binding: IndexBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.REQUEST,
      page: () => const RequestView(),
      binding: RequestBinding(),
    ),
    GetPage(
      name: _Paths.BUTTON,
      page: () => const ButtonView(),
      binding: ButtonBinding(),
    ),
    GetPage(
      name: _Paths.CARD,
      page: () => const CardView(),
      binding: CardBinding(),
    ),
    GetPage(
      name: _Paths.TEXT,
      page: () => const TextView(),
      binding: TextBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE,
      page: () => const ImageView(),
      binding: ImageBinding(),
    ),
    GetPage(
      name: _Paths.ICON,
      page: () => const IconView(),
      binding: IconBinding(),
    ),
    GetPage(
      name: _Paths.TAG,
      page: () => const TagView(),
      binding: TagBinding(),
    ),
    GetPage(
      name: _Paths.TOAST,
      page: () => const ToastView(),
      binding: ToastBinding(),
    ),
    GetPage(
      name: _Paths.LOADING,
      page: () => const LoadingView(),
      binding: LoadingBinding(),
    ),
    GetPage(
      name: _Paths.INPUT,
      page: () => const InputView(),
      binding: InputBinding(),
    ),
    GetPage(
      name: _Paths.INPUT_NUMBER,
      page: () => const InputNumberView(),
      binding: InputNumberBinding(),
    ),
    GetPage(
      name: _Paths.TEXTAREA,
      page: () => const TextareaView(),
      binding: TextareaBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_BOX,
      page: () => const CheckBoxView(),
      binding: CheckBoxBinding(),
    ),
    GetPage(
      name: _Paths.RADIO,
      page: () => const RadioView(),
      binding: RadioBinding(),
    ),
    GetPage(
      name: _Paths.SELECT,
      page: () => const SelectView(),
      binding: SelectBinding(),
    ),
    GetPage(
      name: _Paths.RETE,
      page: () => const ReteView(),
      binding: ReteBinding(),
    ),
    GetPage(
      name: _Paths.SWITCH,
      page: () => const SwitchView(),
      binding: SwitchBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD,
      page: () => const UploadView(),
      binding: UploadBinding(),
    ),
    GetPage(
      name: _Paths.FORM,
      page: () => const FormView(),
      binding: FormBinding(),
    ),
    GetPage(
      name: _Paths.AVATAR,
      page: () => const AvatarView(),
      binding: AvatarBinding(),
    ),
    GetPage(
      name: _Paths.BADGE,
      page: () => const BadgeView(),
      binding: BadgeBinding(),
    ),
    GetPage(
      name: _Paths.BANNER,
      page: () => const BannerView(),
      binding: BannerBinding(),
    ),
    GetPage(
      name: _Paths.COUNT_DOWN,
      page: () => const CountDownView(),
      binding: CountDownBinding(),
    ),
    GetPage(
      name: _Paths.DIVDER,
      page: () => const DivderView(),
      binding: DivderBinding(),
    ),
    GetPage(
      name: _Paths.FLEX,
      page: () => const FlexView(),
      binding: FlexBinding(),
    ),
    GetPage(
      name: _Paths.GRID,
      page: () => const GridView(),
      binding: GridBinding(),
    ),
    GetPage(
      name: _Paths.LIST,
      page: () => const ListView(),
      binding: ListBinding(),
    ),
    GetPage(
      name: _Paths.LOAD_MORE,
      page: () => const LoadMoreView(),
      binding: LoadMoreBinding(),
    ),
    GetPage(
      name: _Paths.NOTICEBAR,
      page: () => const NoticebarView(),
      binding: NoticebarBinding(),
    ),
    GetPage(
      name: _Paths.POPUP,
      page: () => const PopupView(),
      binding: PopupBinding(),
    ),
    GetPage(
      name: _Paths.PROGRESS,
      page: () => const ProgressView(),
      binding: ProgressBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.SLIDER,
      page: () => const SliderView(),
      binding: SliderBinding(),
    ),
    GetPage(
      name: _Paths.TABS,
      page: () => const TabsView(),
      binding: TabsBinding(),
    ),
    GetPage(
      name: _Paths.TIME_LINE,
      page: () => const TimeLineView(),
      binding: TimeLineBinding(),
    ),
    GetPage(
      name: _Paths.TOP_BAR,
      page: () => const TopBarView(),
      binding: TopBarBinding(),
    ),
    GetPage(
      name: _Paths.WATERFALL,
      page: () => const WaterfallView(),
      binding: WaterfallBinding(),
    ),
    GetPage(
      name: _Paths.ACTION_SHEET,
      page: () => const ActionSheetView(),
      binding: ActionSheetBinding(),
    ),
    GetPage(
      name: _Paths.CAPTCHA,
      page: () => const CaptchaView(),
      binding: CaptchaBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM,
      page: () => const ConfirmView(),
      binding: ConfirmBinding(),
    ),
    GetPage(
      name: _Paths.DIALOG,
      page: () => const DialogView(),
      binding: DialogBinding(),
    ),
    GetPage(
      name: _Paths.FILTER_BAR,
      page: () => const FilterBarView(),
      binding: FilterBarBinding(),
    ),
    GetPage(
      name: _Paths.SHARE,
      page: () => const ShareView(),
      binding: ShareBinding(),
    ),
    GetPage(
      name: _Paths.WEBVIEW_BRIDGE,
      page: () => const WebviewBridgeView(),
      binding: WebviewBridgeBinding(),
    ),
    GetPage(
      name: _Paths.WECHAT_PAY,
      page: () => const WechatPayView(),
      binding: WechatPayBinding(),
    ),
    GetPage(
      name: _Paths.ALI_PAY,
      page: () => const AliPayView(),
      binding: AliPayBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.GIT,
      page: () => const GitView(),
      binding: GitBinding(),
    ),
    GetPage(
      name: _Paths.POSTERS,
      page: () => const PostersView(),
      binding: PostersBinding(),
    ),
  ];
}
