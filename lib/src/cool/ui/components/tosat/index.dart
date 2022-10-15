/*
 * @Author: Vera
 * @Date: 2022-10-15 14:04:36
 * @Filename: toast
 * @FilePath: /cool-flutter/lib/src/cool/ui/components/tosat/index.dart
 * @LastEditTime: 2022-10-15 14:14:52
 * @Description: CoolToast
 * @Version: 1.0.0
 */
import 'dart:math';

import 'package:flutter/material.dart';

/// 显示位置枚举
enum CoolToastGravity {
  /// 底部
  bottom,

  /// 居中
  center,

  /// 顶部
  top,
}

/// toast 显示时长
class CoolToastDuration {
  CoolToastDuration._();

  /// toast 显示较短时间（1s）
  static const Duration short = Duration(seconds: 1);

  /// toast 显示较长时间（3s）
  static const Duration long = Duration(seconds: 3);
}

// Toast Widget
class CoolToast {
  /// Toast 距离顶部默认间距
  static const int _defaultTopOffset = 50;

  /// Toast 距离底部默认间距
  static const int _defaultBottomOffset = 50;

  /// _ToastView
  static _ToastView? preToastView;

  /// 显示在中间。如不设置duration则会自动根据内容长度来计算（更友好，最长5秒）
  static void showInCenter(
      {required String text,
      required BuildContext context,
      Duration? duration}) {
    show(
      text,
      context,
      duration: duration,
      gravity: CoolToastGravity.center,
    );
  }

  /// 显示Toast，如不设置duration则会自动根据内容长度来计算（更友好，最长5秒）
  static void show(
    String text,
    BuildContext context, {
    Duration? duration,
    Color? background,
    TextStyle textStyle = const TextStyle(fontSize: 16, color: Colors.white),
    double? radius,
    Image? preIcon,
    double? verticalOffset,
    VoidCallback? onDismiss,
    CoolToastGravity? gravity,
  }) {
    final OverlayState? overlayState = Overlay.of(context);
    if (overlayState == null) return;

    preToastView?._dismiss();
    preToastView = null;

    final double finalVerticalOffset = getVerticalOffset(
      context: context,
      gravity: gravity,
      verticalOffset: verticalOffset,
    );

    /// 自动根据内容长度决定显示时长，更加人性化
    final int autoDuration = min(text.length * 0.06 + 0.8, 5.0).ceil();
    final Duration finalDuration = duration ?? Duration(seconds: autoDuration);
    final OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) {
        return _ToastWidget(
          widget: ToastChild(
            background: background,
            radius: radius,
            msg: text,
            leading: preIcon,
            textStyle: textStyle,
            gravity: gravity,
            verticalOffset: finalVerticalOffset,
          ),
        );
      },
    );
    final _ToastView toastView =
        _ToastView(overlayState: overlayState, overlayEntry: overlayEntry);
    preToastView = toastView;
    toastView._show(
      duration: finalDuration,
      onDismiss: onDismiss,
    );
  }

  /// 获取默认设置的垂直间距
  static double getVerticalOffset({
    required BuildContext context,
    CoolToastGravity? gravity,
    double? verticalOffset,
  }) {
    final double _verticalOffset = verticalOffset ?? 0;
    final double defaultOffset;
    switch (gravity) {
      case CoolToastGravity.bottom:
        final offset = verticalOffset ?? _defaultTopOffset;
        defaultOffset = MediaQuery.of(context).viewInsets.bottom + offset;
        break;
      case CoolToastGravity.top:
        final offset = verticalOffset ?? _defaultBottomOffset;
        defaultOffset = MediaQuery.of(context).viewInsets.top + offset;
        break;
      case CoolToastGravity.center:
      default:
        defaultOffset = verticalOffset ?? 0;
    }

    return defaultOffset + _verticalOffset;
  }
}

class _ToastView {
  OverlayState overlayState;
  OverlayEntry overlayEntry;
  bool _isVisible = false;

  _ToastView({
    required this.overlayState,
    required this.overlayEntry,
  });

  void _show({required Duration duration, VoidCallback? onDismiss}) async {
    _isVisible = true;
    overlayState.insert(overlayEntry);
    Future.delayed(duration, () {
      _dismiss();
      onDismiss?.call();
    });
  }

  void _dismiss() async {
    if (!_isVisible) {
      return;
    }
    _isVisible = false;
    overlayEntry.remove();
  }
}

class ToastChild extends StatelessWidget {
  const ToastChild({
    Key? key,
    required this.msg,
    required this.verticalOffset,
    this.background,
    this.radius,
    this.leading,
    this.gravity,
    this.textStyle,
  }) : super(key: key);

  Alignment get alignment {
    switch (gravity) {
      case CoolToastGravity.bottom:
        return Alignment.bottomCenter;
      case CoolToastGravity.top:
        return Alignment.topCenter;
      case CoolToastGravity.center:
      default:
        return Alignment.center;
    }
  }

  EdgeInsets get padding {
    switch (gravity) {
      case CoolToastGravity.bottom:
        return EdgeInsets.only(bottom: verticalOffset);
      case CoolToastGravity.top:
        return EdgeInsets.only(top: verticalOffset);
      case CoolToastGravity.center:
      default:
        return EdgeInsets.only(top: verticalOffset);
    }
  }

  final String msg;
  final double verticalOffset;
  final Color? background;
  final double? radius;
  final Image? leading;
  final CoolToastGravity? gravity;
  final TextStyle? textStyle;

  InlineSpan get leadingSpan {
    if (leading == null) {
      return const TextSpan(text: "");
    }
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: Padding(padding: const EdgeInsets.only(right: 6), child: leading!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: padding,
        alignment: alignment,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            color: background ?? const Color(0xFF222222),
            borderRadius: BorderRadius.circular(radius ?? 8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
          child: RichText(
            text: TextSpan(children: <InlineSpan>[
              leadingSpan,
              TextSpan(text: msg, style: textStyle),
            ]),
          ),
        ),
      ),
    );
  }
}

class _ToastWidget extends StatelessWidget {
  const _ToastWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Widget widget;

  /// 使用IgnorePointer，方便手势透传过去
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Material(color: Colors.transparent, child: widget),
    );
  }
}
