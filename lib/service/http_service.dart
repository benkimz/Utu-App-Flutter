import 'dart:convert';
import 'package:utu/models/ong.dart';
import 'package:http/http.dart';

class HttpService {
  Future<List<Ong>> fetchOngs() async {
    print("fetching ongs . . .");
    return <Ong>[
      Ong(
        ongName: "Grainden Millers LTD",
        ongAddress: "23 30100",
        ongDescription: "Great Millers",
        ongImg: "assets/images/millers.jpg",
        ongPhone: "+2547 00 676767",
        ongEmail: "grainden@yahoo.com",
        ongSite: "https://www.grainden.or.ke/",
        ongPix: "NA",
        ongBankName: "graindenmillers",
        ongBankAgency: "X-Bankers",
        ongBankAccount: "00811111111111",
      ),
      Ong(
        ongName: "Kenya Red Cross Society",
        ongAddress: "Nairobi",
        ongDescription: "Emergency Relief Organization",
        ongImg: "assets/images/red.png",
        ongPhone: "+2547 00 123456",
        ongEmail: "info@redcrosskenya.org",
        ongSite: "https://www.redcross.or.ke/",
        ongPix: "NA",
        ongBankName: "kenyaredcross",
        ongBankAgency: "Y-Bankers",
        ongBankAccount: "00922222222222",
      ),
      Ong(
        ongName: "EngenderHealth",
        ongAddress: "ABC Place, Nairobi",
        ongDescription: "Sexual and Reproductive Healthcare Provider",
        ongImg: "assets/images/engender.png",
        ongPhone: "+2542 04 449471",
        ongEmail: "info@engenderhealth.org",
        ongSite:
            "[1](https://www.tuko.co.ke/338191-list-ngos-kenya-contacts.html)",
        ongPix: "NA",
        ongBankName: "engenderhealth",
        ongBankAgency: "Z-Bankers",
        ongBankAccount: "00933333333333",
      ),
      Ong(
        ongName: "Kenyan Heart National Foundation",
        ongAddress: "Nairobi Hospital, Nairobi",
        ongDescription: "Heart Disease Prevention and Treatment Organization",
        ongImg: "assets/images/khnf.jpg",
        ongPhone: "+2547 11 111111",
        ongEmail: "info@khf.co.ke",
        ongSite:
            "[2](https://en.wikipedia.org/wiki/List_of_non-governmental_organisations_in_Kenya)",
        ongPix: "NA",
        ongBankName: "kenyanheartfoundation",
        ongBankAgency: "X-Bankers",
        ongBankAccount: "00944444444444",
      ),
    ];
  }

  Future<Ong> saveOng(Ong ong) async {
    print("saving ongs . . .");
    print(jsonEncode(ong));
    final response = await post(
        Uri.parse("http://192.168.0.101:8080/api/ong/register"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(ong));

    if (response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);
      print("Dados recebidos com sucesso: $body");
      return Ong.fromJson(body);
    } else {
      print("Erro ao acessar a API");
      throw "Unable to retrieve ongs.";
    }
  }

  Future<Ong> findOngByEmail(String email) async {
    print("fetching ong by email . . .");

    final response =
        await get(Uri.parse("http://192.168.0.101:8080/api/ong/$email"));
    print(response.body.toString());
    if (response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);
      print("Dados recebidos com sucesso: $body");
      return Ong.fromJson(body);
    } else {
      print("Erro ao acessar a API");
      throw "Unable to retrieve ongs.";
    }
  }

  Future<Ong> updateOng(Ong ong, String id) async {
    print("saving ongs . . .");
    final response = await put(
        Uri.parse("http://192.168.0.101:8080/api/ong/update/$id"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(ong));

    if (response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);
      print("Dados recebidos com sucesso: $body");
      return Ong.fromJson(body);
    } else {
      print("Erro ao acessar a API");
      throw "Unable to retrieve ongs.";
    }
  }
}
