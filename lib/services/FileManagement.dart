import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FileManage{

  //dosyaYolunu oluşturulması
  Future<String> get getDosyaYolu async {
    Directory dosya = await getApplicationDocumentsDirectory();
    return dosya.path;
  }

  //Dosyanın oluşturulması
  Future get dosyaOlustur async {
    var dosyakonumu = await getDosyaYolu;
    return File(dosyakonumu + "/cache.txt");
  }

  //dosyaya yazma işlemi
  Future dosyaYaz(String dosyaninIcerigi) async {
    var myDosya = await dosyaOlustur;

    return myDosya.writeAsString(dosyaninIcerigi);
  }

  //dosyayı okuma
  Future<String> dosyaOku() async {
    try {
      var myDosya = await dosyaOlustur;

      String dosyaicergi = myDosya.readAsStringSync();
      return dosyaicergi;
    } catch (exception) {
      debugPrint("HATA :$exception");
      return "";
    }
  }

}