Kevin's News App

Ini adalah project aplikasi bertema aplikasi berita yang dikembangkan dalam flutter. Menggunakan public API dari https://newsapi.org/ dan package official webview_flutter. Aplikasi mem-fetch berita dari news api, dapat berdasarkan category, dan menampilkan tiap berita dalam webview sehingga menghasilkan tampilan yang clean dan menarik.

Versi flutter SDK : 3.38.3 , webview_flutter : 4.7.0, dart : 3.10.1
Untuk android api level : 35 (Android 15)

## Cara menjalankan

1. Ikuti panduan https://docs.flutter.dev/get-started/quick untuk setup vs code (Hanya bagian Prerequisite & Install and Setup), dan https://docs.flutter.dev/platform-integration/android/setup (baca semua) untuk setup android tooling dan device.
2. Jalankan flutter run di terminal

## Bila ada error di dependencies maka

1. Jalan kan flutter clean
2. Jalan kan flutter pub get
3. Jalankan ulang flutter run
