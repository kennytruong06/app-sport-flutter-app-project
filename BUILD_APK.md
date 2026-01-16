# 📦 Hướng Dẫn Build APK

## 🚀 Lệnh Build APK

### Build Development APK (Khuyến nghị)
```bash
flutter build apk --target lib/app/main_dev.dart --flavor development
```

### Build Release APK (Production)
```bash
flutter build apk --target lib/app/main_dev.dart --flavor development --release
```

### Build APK cho nhiều kiến trúc CPU (Fat APK)
```bash
flutter build apk --target lib/app/main_dev.dart --flavor development --release --target-platform android-arm,android-arm64
```

### Build APK tách biệt theo CPU (Nhẹ hơn)
```bash
flutter build apk --target lib/app/main_dev.dart --flavor development --release --split-per-abi
```

## 📍 Vị Trí File APK Sau Khi Build

Sau khi build thành công, file APK sẽ nằm ở:

### Development APK:
```
build/app/outputs/flutter-apk/app-development-release.apk
```

### Nếu dùng --split-per-abi:
```
build/app/outputs/flutter-apk/app-development-armeabi-v7a-release.apk
build/app/outputs/flutter-apk/app-development-arm64-v8a-release.apk
build/app/outputs/flutter-apk/app-development-x86_64-release.apk
```

## 📱 Cài Đặt APK

### Trên điện thoại:
1. Copy file APK vào điện thoại
2. Mở file APK
3. Cho phép "Cài đặt từ nguồn không xác định" nếu được yêu cầu
4. Nhấn "Cài đặt"

### Qua ADB (nếu có kết nối USB):
```bash
flutter install --flavor development
```

hoặc

```bash
adb install build/app/outputs/flutter-apk/app-development-release.apk
```

## 🔑 Lưu Ý Quan Trọng

- **File size**: APK thường nặng khoảng 20-40 MB
- **Phiên bản Android**: Yêu cầu Android 5.0 (API 21) trở lên
- **Internet**: App cần kết nối Internet để xem bóng đá
- **Development build**: Có đuôi `.dev` trong package name để phân biệt với bản production

## 🎯 Gửi APK

Sau khi build, bạn có thể gửi file APK qua:
- Email
- Google Drive / Dropbox
- Zalo / Telegram
- USB

## 🛠️ Troubleshooting

### Lỗi: "gradlew: Permission denied"
```bash
chmod +x android/gradlew
```

### Clean build nếu có lỗi:
```bash
flutter clean
flutter pub get
flutter build apk --target lib/app/main_dev.dart --flavor development
```

---

**Chúc bạn build thành công! ⚽🎉**
