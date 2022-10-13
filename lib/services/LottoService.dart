import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

class LottoService {
  static void extractLottoData() async {
    final uri = Uri.parse('http://pcso.gov.ph/SearchLottoResult.aspx');
    var formData = <String, dynamic>{};
    var headers = <String, String>{};

    formData['ctl00\$ctl00\$cphContainer\$cpContent\$ddlStartMonth'] = 'January';
    formData['ctl00\$ctl00\$cphContainer\$cpContent\$ddlStartDate'] = '1';
    formData['ctl00\$ctl00\$cphContainer\$cpContent\$ddlStartYear'] = '2022';
    formData['ctl00\$ctl00\$cphContainer\$cpContent\$ddlEndMonth'] = 'July';
    formData['ctl00\$ctl00\$cphContainer\$cpContent\$ddlEndDate'] = '19';
    formData['ctl00\$ctl00\$cphContainer\$cpContent\$ddlEndYear'] = '2022';
    formData['ctl00\$ctl00\$cphContainer\$cpContent\$ddlSelectGame'] = '0';
    formData['ctl00\$ctl00\$cphContainer\$cpContent\$btnSearch'] = 'Search Lotto';

    headers['User-Agent'] = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/58.0.3029.81 Chrome/58.0.3029.81 Safari/537.36';
    headers['Content-Type'] = 'application/x-www-form-urlencoded';

    http.Response response = await http.post(uri, headers: headers, body: formData);

    if(response.statusCode == 200) {
      var document = parser.parse(response.body);

      print(document);
    }
  }
}