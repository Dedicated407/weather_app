class GetWeatherRequest {
  final double latitude;
  final double longitude;

  GetWeatherRequest({
    required this.latitude,
    required this.longitude
  });

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude
    };
  }
}