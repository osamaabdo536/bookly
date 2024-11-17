import 'package:bookly/Featuers/home/domain/entities/book_entity.dart';

import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "mh0bU6NXrBgC"
/// etag : "9c2x1Edwg9U"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/mh0bU6NXrBgC"
/// volumeInfo : {"title":"Core Python Programming","authors":["Wesley Chun"],"publisher":"Prentice Hall Professional","publishedDate":"2001","description":"Experts and novices alike will be able to find information about every command they'll need to use Linux. This complete, practical desk reference is organized by function, with a road map-style alphabetical reference for quick access of information about all aspects of running and administering the program. The CD-ROM contains Windows and Linux Python distributions plus extensive cross-platform source code from the book.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9780130260369"},{"type":"ISBN_10","identifier":"0130260363"}],"readingModes":{"text":false,"image":true},"pageCount":805,"printType":"BOOK","categories":["Computers"],"averageRating":3.5,"ratingsCount":12,"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.3.2.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=mh0bU6NXrBgC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=mh0bU6NXrBgC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=mh0bU6NXrBgC&printsec=frontcover&dq=programming&hl=&cd=3&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=mh0bU6NXrBgC&dq=programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Core_Python_Programming.html?hl=&id=mh0bU6NXrBgC"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED_FOR_ACCESSIBILITY","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=mh0bU6NXrBgC&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"The CD-ROM contains Windows and Linux Python distributions plus extensive cross-platform source code from the book."}

class BookModel extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
      bookId: id!,
      image: volumeInfo?.imageLinks?.thumbnail ?? '',
      authorName: volumeInfo?.authors?.first ?? 'No Name',
      price: 0.0,
      rating: volumeInfo!.averageRating!,
      title: volumeInfo.title!);

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
    kind: json['kind'] as String?,
    id: json['id'] as String?,
    etag: json['etag'] as String?,
    selfLink: json['selfLink'] as String?,
    volumeInfo: json['volumeInfo'] == null
        ? null
        : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
    saleInfo: json['saleInfo'] == null
        ? null
        : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
    accessInfo: json['accessInfo'] == null
        ? null
        : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
    searchInfo: json['searchInfo'] == null
        ? null
        : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'kind': kind,
    'id': id,
    'etag': etag,
    'selfLink': selfLink,
    'volumeInfo': volumeInfo?.toJson(),
    'saleInfo': saleInfo?.toJson(),
    'accessInfo': accessInfo?.toJson(),
    'searchInfo': searchInfo?.toJson(),
  };
}
