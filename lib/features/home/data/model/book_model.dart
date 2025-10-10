class BookModel {
  String? id;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  BookModel({this.id, this.volumeInfo, this.saleInfo, this.accessInfo});

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'],
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
      saleInfo:
      json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null,
      accessInfo: json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'])
          : null,
    );
  }
}

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifier>? industryIdentifiers;
  int? pageCount;
  List<String>? categories;
  double? averageRating;
  int? ratingsCount;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.pageCount,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors: json['authors'] != null
          ? List<String>.from(json['authors'])
          : null,
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: json['industryIdentifiers'] != null
          ? (json['industryIdentifiers'] as List)
          .map((e) => IndustryIdentifier.fromJson(e))
          .toList()
          : null,
      pageCount: json['pageCount'],
      categories: json['categories'] != null
          ? List<String>.from(json['categories'])
          : null,
      averageRating: (json['averageRating'] != null)
          ? (json['averageRating'] as num).toDouble()
          : null,
      ratingsCount: json['ratingsCount'],
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
    );
  }
}

class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'],
      identifier: json['identifier'],
    );
  }
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
    );
  }
}

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  Price? listPrice;
  Price? retailPrice;
  String? buyLink;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
      listPrice: json['listPrice'] != null
          ? Price.fromJson(json['listPrice'])
          : null,
      retailPrice: json['retailPrice'] != null
          ? Price.fromJson(json['retailPrice'])
          : null,
      buyLink: json['buyLink'],
    );
  }
}

class Price {
  double? amount;
  String? currencyCode;

  Price({this.amount, this.currencyCode});

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      amount: (json['amount'] != null)
          ? (json['amount'] as num).toDouble()
          : null,
      currencyCode: json['currencyCode'],
    );
  }
}

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? webReaderLink;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.webReaderLink,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'],
      viewability: json['viewability'],
      embeddable: json['embeddable'],
      publicDomain: json['publicDomain'],
      webReaderLink: json['webReaderLink'],
    );
  }
}
