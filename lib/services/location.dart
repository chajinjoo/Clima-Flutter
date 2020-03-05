import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      //이 코드는 오류가 날 수 있으니 try catch 로 오류잡기
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      //라이브러리를 통해 현재 나의 GPS 호출
      //low 부분의 정확도가 높아질수록 배터리 용량 많이 잡아먹음

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
