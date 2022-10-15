# COOL-FLUTTER(支持空安全)

让你不用想太多就能开发完功能



| <img src="static/1.jpg" width="180"> | <img src="static/2.jpg" width="180"> | <img src="static/3.jpg" width="180"> | <img src="static/4.jpg" width="180"> |
| :----------------------------------- | -----------------------------------: | -----------------------------------: | -----------------------------------: |










## 更快

-   开发快：`eps` 模式下，无须手动添加接口请求方法。



## 环境要求 如flutter pub get 安装不了请检查环境
``` shell

# COOL-FLUTTER 开发环境
➜ flutter --version
Flutter 3.3.4 • channel stable • https://github.com/flutter/flutter.git
Framework • revision eb6d86ee27 (9 days ago) • 2022-10-04 22:31:45 -0700
Engine • revision c08d7d5efc
Tools • Dart 2.18.2 • DevTools 2.15.0

# COOL-FLUTTER 要求环境

sdk: '>=2.18.0 <3.0.0'
flutter: '>=3.3.0'

```
## 安装并使用

``` dart
 
书写中

```

## 依赖介绍

| 依赖包名 | 包介绍 |                                           官网 |  版本 | 空安全 |
| :------- | -----: | ---------------------------------------------: | ----: | :----: |
| Get      | 编辑中 |   [Github](https://github.com/jonataslaw/getx) | 4.6.5 |  支持  |
| uuid     | 编辑中 | [Pub](https://pub.flutter-io.cn/packages/uuid) | 3.0.6 |  支持  |
| sqlite3  | 编辑中 |        [Pub](https://pub.dev/packages/sqlite3) | 1.9.0 |  支持  |






## 更强

内置请求、路由、文件上传、组件通信、缓存等方法及 ui 库和 hooks
比UNI更强更流畅 适用于IOS,Android


## 目录树 TODO COOL-FLUTTER
```

COOL-FLUTTER
 ├── cool.dart
 └── src
     ├── theme
     │   └── index.dart
     ├── config
     │   └── index.dart
     ├── ui
     │   ├── index.dart
     │   ├── utils
     │   │   └── index.dart
     │   ├── types
     │   ├── hook
     │   ├── style
     │   │   └── toast.dart
     │   └── components
     │       ├── cool-ui.dart
     │       └── tosat
     │           └── index.dart     - [ 🪝 ] 已完成
     │       └── text
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── image
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── icon
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── tag
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── loading
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── button
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── input
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── input-number
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── textarea
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── checkbox
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── radio
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── select
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── rate
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── switch
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── upload
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── form
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── avatar
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── badge
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── banner
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── card
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── count-down
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── divder
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── flex
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── grid
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── list
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── loadmore
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── noticebar
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── popup
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── progress
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── search
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── slider
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── tabs
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── timeline
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── topbar
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── waterfall
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── action-sheet
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── captcha
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── confirm
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── dialog
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── filter-bar
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── share
     │           └── index.dart     - [ ❌ ] 开发中
     │       └── webview-bridge
     │           └── index.dart     - [ 🪝 ] 已完成
     ├── utils
     │   └── index.dart
     └── core
         ├── index.dart
         ├── upload
         ├── store
         ├── socket
         ├── service
         ├── router
         ├── mitt
         ├── hook
         └── eps

 ```