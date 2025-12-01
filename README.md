# Kevin's News App

Adalah sebuah aplikasi android bertema aplikasi berita yang dikembangkan menggunakan flutter. Aplikasi ini menggunakan public api dari https://newsapi.org/ dan official package webview_flutter. Aplikasi ini mem-fetch data dari newsapi.org, mempunyai feature Hot News, Trending news, dan News by Category untuk mendapatkan berita pada setiap kategori. Dapat juga membaca tiap entry berita yang menggunakan webview_flutter sebagai container sehingga menghasilkan tampilan yang responsive dan menarik.

Flutter version : Flutter 3.38.3, Dart: 3.10.1, webview_flutter : 4.7.0
Android API level : 35 (Android 15)

## Cara menjalankan

1. Ikuti panduan https://docs.flutter.dev/get-started/quick (bagian Download prerequisite software & Install and set up Flutter) untuk setup vs code dan https://docs.flutter.dev/platform-integration/android/setup (ikuti semua) untuk setup android tooling & device (aplikasi di test menggunakan usb debugging)
2. Jalankan flutter run (build pertama kali memakan waktu 15 menit)

## Bila error di dependencies

1. Jalankan flutter clean utk bersihkan cache
2. Jalankan flutter pub get utk menarik package yg dibutuhkan
3. Jalankan kembali flutter run
