import 'package:panelmex_app/common/constans.dart';

String getStaticMapBox(double latitud, double longitud, String height, String width) {
  return 'https://api.mapbox.com/styles/v1/mapbox/streets-v10/static/${longitud},${latitud},14.0,0,0/${height}x${width}?access_token=pk.eyJ1IjoiaG9zdGVsaXgiLCJhIjoiY2pvc3pjMzk1MHZ5MTNxbmhicGFmbWpwcCJ9.Q6iOP5hPtKHNlbJWup_r3g';
}
//https://api.mapbox.com/styles/v1/mapbox/streets-v10/static/-75.12209,0.18242,7.7,0,0/300x200?access_token=pk.eyJ1IjoiaG9zdGVsaXgiLCJhIjoiY2pvc3pjMzk1MHZ5MTNxbmhicGFmbWpwcCJ9.Q6iOP5hPtKHNlbJWup_r3g/

// Obtener los estatus en espanol
String getNameStatus(String status) {
  switch(status) {
    case STATUS_PENDING:
      return 'Pendiente';
      break;
      
    case STATUS_ACCEPTED:
      return 'Aceptado';
      break;

    case STATUS_COMPLETED:
      return 'Completado';
      break;
    
    case STATUS_REFUSED:
      return 'Rechasado';
      break;

    default:
      return null;
      break;
  }
}