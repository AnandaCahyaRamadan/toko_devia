import 'dart:convert';

class ProductsResponseModel {
  final List<Product>? data;
  final Meta? meta;

  ProductsResponseModel({
    this.data,
    this.meta,
  });

  factory ProductsResponseModel.fromJson(String str) =>
      ProductsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductsResponseModel.fromMap(Map<String, dynamic> json) =>
      ProductsResponseModel(
        data: json["data"] == null
            ? []
            : List<Product>.from(json["data"]!.map((x) => Product.fromMap(x))),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
        "meta": meta?.toMap(),
      };
}

class Product {
  final int? id;
  final PurpleAttributes? attributes;

  Product({
    this.id,
    this.attributes,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : PurpleAttributes.fromMap(json["attributes"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "attributes": attributes?.toMap(),
      };
}

class PurpleAttributes {
  final String? name;
  final String? description;
  final String? price;
  final String? stock;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? publishedAt;
  final Images? images;
  final Categories? categories;

  PurpleAttributes({
    this.name,
    this.description,
    this.price,
    this.stock,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.images,
    this.categories,
  });

  factory PurpleAttributes.fromJson(String str) =>
      PurpleAttributes.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleAttributes.fromMap(Map<String, dynamic> json) =>
      PurpleAttributes(
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        images: json["images"] == null ? null : Images.fromMap(json["images"]),
        categories: json["categories"] == null
            ? null
            : Categories.fromMap(json["categories"]),
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "images": images?.toMap(),
        "categories": categories?.toMap(),
      };
}

class Categories {
  final List<CategoriesDatum>? data;

  Categories({
    this.data,
  });

  factory Categories.fromJson(String str) =>
      Categories.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Categories.fromMap(Map<String, dynamic> json) => Categories(
        data: json["data"] == null
            ? []
            : List<CategoriesDatum>.from(
                json["data"]!.map((x) => CategoriesDatum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class CategoriesDatum {
  final int? id;
  final FluffyAttributes? attributes;

  CategoriesDatum({
    this.id,
    this.attributes,
  });

  factory CategoriesDatum.fromJson(String str) =>
      CategoriesDatum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoriesDatum.fromMap(Map<String, dynamic> json) => CategoriesDatum(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : FluffyAttributes.fromMap(json["attributes"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "attributes": attributes?.toMap(),
      };
}

class FluffyAttributes {
  final String? name;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? publishedAt;

  FluffyAttributes({
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
  });

  factory FluffyAttributes.fromJson(String str) =>
      FluffyAttributes.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyAttributes.fromMap(Map<String, dynamic> json) =>
      FluffyAttributes(
        name: json["name"],
        description: json["description"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
      };
}

class Images {
  final List<ImagesDatum>? data;

  Images({
    this.data,
  });

  factory Images.fromJson(String str) => Images.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Images.fromMap(Map<String, dynamic> json) => Images(
        data: json["data"] == null
            ? []
            : List<ImagesDatum>.from(
                json["data"]!.map((x) => ImagesDatum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class ImagesDatum {
  final int? id;
  final TentacledAttributes? attributes;

  ImagesDatum({
    this.id,
    this.attributes,
  });

  factory ImagesDatum.fromJson(String str) =>
      ImagesDatum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ImagesDatum.fromMap(Map<String, dynamic> json) => ImagesDatum(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : TentacledAttributes.fromMap(json["attributes"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "attributes": attributes?.toMap(),
      };
}

class TentacledAttributes {
  final String? name;
  final dynamic alternativeText;
  final dynamic caption;
  final int? width;
  final int? height;
  final Formats? formats;
  final String? hash;
  final String? ext;
  final String? mime;
  final double? size;
  final String? url;
  final dynamic previewUrl;
  final String? provider;
  final dynamic providerMetadata;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  TentacledAttributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  factory TentacledAttributes.fromJson(String str) =>
      TentacledAttributes.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledAttributes.fromMap(Map<String, dynamic> json) =>
      TentacledAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats:
            json["formats"] == null ? null : Formats.fromMap(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats?.toMap(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class Formats {
  final Thumbnail? thumbnail;

  Formats({
    this.thumbnail,
  });

  factory Formats.fromJson(String str) => Formats.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Formats.fromMap(Map<String, dynamic> json) => Formats(
        thumbnail: json["thumbnail"] == null
            ? null
            : Thumbnail.fromMap(json["thumbnail"]),
      );

  Map<String, dynamic> toMap() => {
        "thumbnail": thumbnail?.toMap(),
      };
}

class Thumbnail {
  final String? name;
  final String? hash;
  final String? ext;
  final String? mime;
  final dynamic path;
  final int? width;
  final int? height;
  final double? size;
  final String? url;

  Thumbnail({
    this.name,
    this.hash,
    this.ext,
    this.mime,
    this.path,
    this.width,
    this.height,
    this.size,
    this.url,
  });

  factory Thumbnail.fromJson(String str) => Thumbnail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Thumbnail.fromMap(Map<String, dynamic> json) => Thumbnail(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"]?.toDouble(),
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "url": url,
      };
}

class Meta {
  final Pagination? pagination;

  Meta({
    this.pagination,
  });

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromMap(json["pagination"]),
      );

  Map<String, dynamic> toMap() => {
        "pagination": pagination?.toMap(),
      };
}

class Pagination {
  final int? page;
  final int? pageSize;
  final int? pageCount;
  final int? total;

  Pagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  factory Pagination.fromJson(String str) =>
      Pagination.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pagination.fromMap(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toMap() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}
