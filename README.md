# Ứng Dụng Xem Bóng Đá Trực Tiếp 

⚽ **Ứng dụng Flutter giúp ba Trương Văn Thắng xem bóng đá dễ dàng**

## 🎯 Tính Năng

- ✅ Màn hình chào mừng đẹp mắt với hiệu ứng chuyển động
- ✅ Danh sách các kênh xem bóng đá với nút bấm lớn, dễ thao tác
- ✅ WebView tích hợp để xem trực tiếp ngay trong app
- ✅ Giao diện hiện đại với màu xanh lá cây, xanh ngọc
- ✅ Chữ to, dễ đọc cho người lớn tuổi
- ✅ Điều khiển WebView đơn giản: Lùi, Tiến, Trang chủ, Tải lại

## 📱 Danh Sách Kênh

1. **VTV** - Kênh thể thao VTV5 chất lượng cao
2. **ThapcamTV** - Xem bóng đá trực tiếp nhiều giải đấu
3. **RakhoiTV** - Trực tiếp bóng đá chất lượng ổn định

## 🚀 Cách Chạy

### Chạy Development Build
```bash
flutter run --target lib/app/main_dev.dart --flavor development
```

### Chạy trên thiết bị cụ thể
```bash
flutter run --target lib/app/main_dev.dart --flavor development -d <device-id>
```

### Xem danh sách thiết bị
```bash
flutter devices
```

## 📁 Cấu Trúc Dự Án

```
lib/
├── app/
│   └── main_dev.dart           # Entry point cho development
├── config/
│   ├── app_config.dart         # Cấu hình app và danh sách website
│   └── app_theme.dart          # Theme và màu sắc
├── models/
│   └── sport_website.dart      # Model cho website
├── screens/
│   ├── splash_screen.dart      # Màn hình chào mừng
│   ├── sites_screen.dart       # Màn hình danh sách kênh
│   └── webview_screen.dart     # Màn hình xem website
└── widgets/                    # (Dự phòng cho các widget tùy chỉnh)
```

## 🎨 Thiết Kế

- **Theme**: Dark mode với gradient xanh lá và xanh ngọc
- **Font**: Google Fonts Poppins cho giao diện hiện đại
- **Animations**: Smooth transitions và fade effects
- **UX**: Tối ưu cho người lớn tuổi với nút lớn và text rõ ràng

## 🔧 Thêm/Sửa Website

Để thêm hoặc chỉnh sửa danh sách website, mở file `lib/config/app_config.dart`:

```dart
static final List<SportWebsite> websites = [
  SportWebsite(
    name: 'Tên kênh',
    description: 'Mô tả ngắn',
    url: 'https://website-url.com',
    iconEmoji: '⚽', // Icon emoji
  ),
  // Thêm kênh khác ở đây...
];
```

## 📦 Dependencies

- `flutter`: Framework chính
- `webview_flutter`: ^4.4.2 - Hiển thị website trong app
- `google_fonts`: ^6.1.0 - Font chữ đẹp

## ✨ Tính Năng Nổi Bật

### Màn Hình Splash
- Lời chào cá nhân hóa
- Icon bóng đá với hiệu ứng gradient
- Loading animation mượt mà
- Tự động chuyển màn sau 2 giây

### Màn Hình Danh Sách
- Cards lớn, dễ bấm
- Animation xuất hiện từng card
- Gradient background đẹp mắt
- Icon emoji cho mỗi kênh

### Màn Hình WebView
- Progress loading với phần trăm
- Nút điều khiển lớn ở dưới cùng
- Nút refresh và back dễ thấy
- Xử lý lỗi thông minh

## 🛠️ Build Production

```bash
flutter build apk --target lib/app/main_dev.dart --flavor development
```

## 📝 Ghi Chú

- App yêu cầu kết nối Internet để xem trực tiếp
- Một số website có thể yêu cầu Desktop mode (có thể thêm trong tương lai)
- Các log "updateAcquireFence" trong console là bình thường khi xử lý video

## 👨‍💻 Được Tạo Bởi

Ứng dụng được tạo với ❤️ sử dụng Flutter và Google AI

---

**Chúc ba Thắng xem bóng vui vẻ! ⚽🎉**
