import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WordTime{
  late String location;
  late String time = "";
  late String flag;
  late String urlEndPoint;
  WordTime({required this.location, required this.flag, required this.urlEndPoint});

  Future<void> getTime() async {
    try{
      var url =  Uri.http("worldtimeapi.org","/api/timezone/$urlEndPoint");
      // Uri.https('jsonplaceholder.typicode.com', '/todos/1');
      //Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
      Response response = await get(url);
      Map responseValue = jsonDecode(response.body);
      String dateTime = responseValue["datetime"];
      String offset = responseValue["utc_offset"];
      // convert to dateTime type.
      DateTime now = DateTime.parse(dateTime);
      // get the 1 to 3 value in the range like 02.0 will get 02
      int newOffset = int.parse(offset.substring(1, 3));
      // adds the int gotten to the hours in now.
      now = now.add(Duration(hours: newOffset));
      time = DateFormat.jm().format(now);
    }catch(e){
      print("an error occured while getting the time and date $e");
      time = "error occured";
    }
  }
}