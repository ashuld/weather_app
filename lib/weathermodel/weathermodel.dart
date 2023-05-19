// ignore_for_file: prefer_typing_uninitialized_variables
//
class Weather {
  var city;
  var icon;
  var condition;
  var temp;
  var wind;
  var humidity;
  var winddir;
  var gust;
  var uv;
  var pressure;
  var precipice;
  var lastupdate;

  Weather(
      {required this.city,
      required this.icon,
      required this.condition,
      required this.temp,
      required this.wind,
      required this.humidity,
      required this.winddir,
      required this.gust,
      required this.uv,
      required this.pressure,
      required this.precipice,
      required this.lastupdate});
      Weather.fromJson(Map<String, dynamic> json){
        city=json['location']['name'];
        icon=json['current']['condition']['icon'];
        condition=json['current']['condition']['text'];
        temp=json['current']['temp_c'];
        wind=json['current']['wind_kph'];
        humidity=json['current']['humidity'];
        winddir=json['current']['wind_dir'];
        pressure=json['current']['pressure_mb'];
        precipice=json['current']['precip_mm'];
        lastupdate=json['current']['last_updated'];
        gust=json['current']['gust_kph'];
        uv=json['current']['uv'];
      }
}
