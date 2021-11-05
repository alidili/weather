import 'package:equatable/equatable.dart';
import 'package:weather/data/model/internal/tab_element.dart';
import 'package:weather/data/model/internal/weather_error.dart';

class MainPageState extends Equatable {
  const MainPageState();

  @override
  List<Object?> get props => [];
}

///定位信息获取
class InitLocationState extends MainPageState {}

///定位失败
// class LocationFaliedState extends MainScreenState {
//   final WeatherError error;
//
//   const LocationFaliedState(this.error);
//
//   @override
//   List<Object?> get props => [unit, error];
// }

///定位成功
class LocationSuccessState extends MainPageState {}

///添加主屏幕tab
class AddWeatherTabState extends MainPageState {
  final List<TabElement> tabList;

  AddWeatherTabState(this.tabList);

  @override
  List<Object?> get props => [tabList];
}

///添加搜素城市到主屏幕tab
class AddSelectedCityToTabState extends MainPageState {
  final String city;
  final String lat;
  final String lon;

  AddSelectedCityToTabState(this.city, this.lat, this.lon);

  @override
  List<Object?> get props => [city, lat, lon];
}

///主页面加载天气失败
class FailedLoadMainPageState extends MainPageState {
  final WeatherError error;

  const FailedLoadMainPageState(this.error);

  @override
  List<Object?> get props => [error];
}
