import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GiphyApi {
  static Future<String> getFirstGif(int number) async {
    // Make API call
    String fixSearchUrl = "https://api.giphy.com/v1/gifs/search?";
    String apiKeyUrl = "api_key=" + "hcKpPwHA8VH8LiCBja9kiuEmBeMbT2YJ";
    String parametersSearchUrl =
        "&q=yoga&limit=1&offset=" + number.toString() + "&rating=G&lang=en";
    var response =
        await http.get(fixSearchUrl + apiKeyUrl + parametersSearchUrl);

    // Parse API
    Map<String, dynamic> parsedJson = json.decode(response.body);
    List datalist = parsedJson["data"];
    Map firstDataElement = datalist[0];
    Map images = firstDataElement["images"];
    Map originalMapImage = images["original"];
    String url = originalMapImage["url"];

    return url;
  }

  static StreamController gifController = StreamController<String>();

  static getFirstGifStream(int number) async {
    print("stream");
    // Make API call
    String fixSearchUrl = "https://api.giphy.com/v1/gifs/search?";
    String apiKeyUrl = "api_key=" + "hcKpPwHA8VH8LiCBja9kiuEmBeMbT2YJ";
    String parametersSearchUrl =
        "&q=yoga&limit=1&offset=" + number.toString() + "&rating=G&lang=en";
    var response =
        await http.get(fixSearchUrl + apiKeyUrl + parametersSearchUrl);
    print(response.request);
    // Parse API
    Map<String, dynamic> parsedJson = json.decode(response.body);
    List datalist = parsedJson["data"];
    Map firstDataElement = datalist[0];
    Map images = firstDataElement["images"];
    Map originalMapImage = images["original"];
    String url = originalMapImage["url"];

    gifController.add(url);
  }
}
