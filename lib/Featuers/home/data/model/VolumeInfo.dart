import 'IndustryIdentifiers.dart';
import 'ReadingModes.dart';
import 'PanelizationSummary.dart';
import 'ImageLinks.dart';

/// title : "Core Python Programming"
/// authors : ["Wesley Chun"]
/// publisher : "Prentice Hall Professional"
/// publishedDate : "2001"
/// description : "Experts and novices alike will be able to find information about every command they'll need to use Linux. This complete, practical desk reference is organized by function, with a road map-style alphabetical reference for quick access of information about all aspects of running and administering the program. The CD-ROM contains Windows and Linux Python distributions plus extensive cross-platform source code from the book."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9780130260369"},{"type":"ISBN_10","identifier":"0130260363"}]
/// readingModes : {"text":false,"image":true}
/// pageCount : 805
/// printType : "BOOK"
/// categories : ["Computers"]
/// averageRating : 3.5
/// ratingsCount : 12
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.3.2.0.preview.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=mh0bU6NXrBgC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=mh0bU6NXrBgC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=mh0bU6NXrBgC&printsec=frontcover&dq=programming&hl=&cd=3&source=gbs_api"
/// infoLink : "http://books.google.com.eg/books?id=mh0bU6NXrBgC&dq=programming&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Core_Python_Programming.html?hl=&id=mh0bU6NXrBgC"

class VolumeInfo {
  VolumeInfo({
      this.title, 
      this.authors, 
      this.publisher, 
      this.publishedDate, 
      this.description, 
      this.industryIdentifiers, 
      this.readingModes, 
      this.pageCount, 
      this.printType, 
      this.categories, 
      this.averageRating, 
      this.ratingsCount, 
      this.maturityRating, 
      this.allowAnonLogging, 
      this.contentVersion, 
      this.panelizationSummary, 
      this.imageLinks, 
      this.language, 
      this.previewLink, 
      this.infoLink, 
      this.canonicalVolumeLink,});

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    averageRating = json['averageRating'];
    ratingsCount = json['ratingsCount'];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  double? averageRating;
  int? ratingsCount;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] = industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['averageRating'] = averageRating;
    map['ratingsCount'] = ratingsCount;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

}