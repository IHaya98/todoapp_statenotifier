# todoapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# freezed build方法
 flutter pub run build_runner build --delete-conflicting-outputs

 # 参考URL
### Widget一覧
https://qiita.com/matsukatsu/items/e289e30231fffb1e4502

## TODO
web/index.htmlに下記を追加する
```
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-firestore.js"></script>
<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "apiKey",
    authDomain: "authDomain",
    projectId: "projectId",
    storageBucket: "storageBucket",
    messagingSenderId: "messagingSenderId",
    appId: "appId"
  };
  // Initialize Firebase
  if(firebase.apps.length === 0){
    firebase.initializeApp(firebaseConfig);
  }
</script>
```
lib/main.dartに下記を追加する
```
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.length == 0) {
    await Firebase.initializeApp(
        name: "app",
        options: FirebaseOptions(
            apiKey: "apiKey",
            authDomain: "authDomain",
            projectId: "projectId",
            storageBucket: "storageBucket",
            messagingSenderId: "messagingSenderId",
            appId: "appId"
        )
    )
  }

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}
```
# iosの場合
Firebaseプロジェクト登録 　<br>
  ```
  バンドルID:ios/Runner.xcodeproj/project.pbxprojのPRODUCT_BUNDLE_IDENTIFIER = *;
  ```
GoogleService-Info.plistをios/Runner/に配置する。　<br>
ios/Runner/Info.plistに下記を追記します。Copied from GoogleService-Info.plist key REVERSED_CLIENT_IDのところは自分のプロジェクトのGoogleService-Info.plistからREVERSED_CLIENT_IDをコピペします。
```
<!-- Put me in the [my_project]/ios/Runner/Info.plist file -->
<!-- Google Sign-in Section -->
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleTypeRole</key>
        <string>Editor</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <!-- TODO Replace this value: -->
            <!-- Copied from GoogleService-Info.plist key REVERSED_CLIENT_ID -->
            <string>com.googleusercontent.apps.861823949799-vc35cprkp249096uujjn0vvnmcvjppkn</string>
        </array>
    </dict>
</array>
<!-- End of the Google Sign-in Section -->
```

# Androidの場合　<br>
アプリIDはandroid/app/build.gradleのandroid.defaultConfig.applicationIdの値を入力 <br>
app内のbuild.gradleのminSdkVersionを21に変更する <br>

# Firebaseのプロジェクト作成
https://firebase.flutter.dev/docs/overview/

# Firestore rule更新
firebase deploy --only firestore:rules

# スプラッシュ画面を作成する
pubspec.ymlに下記を設定してコマンドを入力する <br>
```
flutter_native_splash:
  image: "assets/icon/emo_5.png"
  color: "4DD0E1"
```
・作成
```
flutter pub get
flutter pub run flutter_native_splash:create
```
・削除
```
flutter pub run flutter_native_splash:remove
```