import 'package:firebase_database/firebase_database.dart';

class Service {
  String _key;
  String _type;
  String _date;
  String _time;
  String _uid;
  String _status;
  String _created_date;
  String _static_map_uri;

  Service(this._key, this._uid, this._type, this._date, this._time,
      this._status, this._created_date, this._static_map_uri);

  String get key => _key;

  String get type => _type;

  String get date => _date;

  String get time => _time;

  String get uid => _uid;

  String get status => _status;

  String get createdDate => _created_date;

  String get staticMapUri => _static_map_uri;

  Service.fromSnapshot(DataSnapshot snapshot) {
    print(snapshot.value);
    _key = snapshot.key;
    _uid = snapshot.value['uid'];
    _type = snapshot.value['type'];
    _date = snapshot.value['date'];
    _time = snapshot.value['time'];
    _status = snapshot.value['status'];
    _created_date = snapshot.value['created_date'];
    _static_map_uri = snapshot.value['static_map_uri'];
  }
}
