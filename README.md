# 🗺️ Flutter Map Search App

Flutter 기반의 지역 검색 앱입니다. 사용자는 지역명을 입력하여 Naver 지역 검색 API를 통해 관련 장소 정보를 검색할 수 있습니다.

---

## 🚀 기능

- 지역 키워드 검색
- 검색된 장소 목록 표시 (이름, 카테고리, 주소)
- 장소 클릭 시 상세 정보 웹 페이지로 이동

---

## 🛠️ 기술 스택

- **Flutter**
- **Riverpod** - 상태 관리
- **Dio** - HTTP 통신
- **Naver Search API** - 장소 검색
- **WebView** - 상세 페이지 표시
- **Geolocator** - (위치 기반 기능 확장 가능)

---

## 📦 설치 및 실행

```bash
git clone https://github.com/ajkh300100/flutter_map_search_app.git
cd flutter_map_search_app
flutter pub get
flutter run

---

🔑 Naver API 등록 방법
네이버 개발자 센터에서 애플리케이션 등록

API 선택: "검색 > 지역"

클라이언트 ID와 시크릿을 발급받고, lib/repositories/location_repository.dart에 입력:

static const String clientId = 'YOUR_CLIENT_ID';
static const String clientSecret = 'YOUR_CLIENT_SECRET';

---

📁 프로젝트 구조
lib/
├── main.dart
├── models/
│   └── location.dart
├── pages/
│   ├── home_page.dart
│   └── detail_page.dart
├── repositories/
│   └── location_repository.dart
├── utils/
│   └── constants.dart
├── viewmodels/
│   └── location_viewmodel.dart
└── widgets/
    └── custom_text_field.dart
