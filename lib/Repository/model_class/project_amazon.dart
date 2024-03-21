class ProjectAmazon {
  ProjectAmazon({
      this.status, 
      this.requestId, 
      this.data,});

  ProjectAmazon.fromJson(dynamic json) {
    status = json['status'];
    requestId = json['request_id'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  String? requestId;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['request_id'] = requestId;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.totalProducts, 
      this.country, 
      this.domain, 
      this.products,});

  Data.fromJson(dynamic json) {
    totalProducts = json['total_products'];
    country = json['country'];
    domain = json['domain'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }
  int? totalProducts;
  String? country;
  String? domain;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_products'] = totalProducts;
    map['country'] = country;
    map['domain'] = domain;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Products {
  Products({
      this.asin, 
      this.productTitle, 
      this.productPrice, 
      this.productOriginalPrice, 
      this.currency, 
      this.productStarRating, 
      this.productNumRatings, 
      this.productUrl, 
      this.productPhoto, 
      this.productNumOffers, 
      this.productMinimumOfferPrice, 
      this.isBestSeller, 
      this.isAmazonChoice, 
      this.isPrime, 
      this.climatePledgeFriendly, 
      this.salesVolume, 
      this.delivery,});

  Products.fromJson(dynamic json) {
    asin = json['asin'];
    productTitle = json['product_title'];
    productPrice = json['product_price'];
    productOriginalPrice = json['product_original_price'];
    currency = json['currency'];
    productStarRating = json['product_star_rating'];
    productNumRatings = json['product_num_ratings'];
    productUrl = json['product_url'];
    productPhoto = json['product_photo'];
    productNumOffers = json['product_num_offers'];
    productMinimumOfferPrice = json['product_minimum_offer_price'];
    isBestSeller = json['is_best_seller'];
    isAmazonChoice = json['is_amazon_choice'];
    isPrime = json['is_prime'];
    climatePledgeFriendly = json['climate_pledge_friendly'];
    salesVolume = json['sales_volume'];
    delivery = json['delivery'];
  }
  String? asin;
  String? productTitle;
  String? productPrice;
  String? productOriginalPrice;
  String? currency;
  String? productStarRating;
  int? productNumRatings;
  String? productUrl;
  String? productPhoto;
  dynamic productNumOffers;
  String? productMinimumOfferPrice;
  bool? isBestSeller;
  bool? isAmazonChoice;
  bool? isPrime;
  bool? climatePledgeFriendly;
  String? salesVolume;
  String? delivery;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['asin'] = asin;
    map['product_title'] = productTitle;
    map['product_price'] = productPrice;
    map['product_original_price'] = productOriginalPrice;
    map['currency'] = currency;
    map['product_star_rating'] = productStarRating;
    map['product_num_ratings'] = productNumRatings;
    map['product_url'] = productUrl;
    map['product_photo'] = productPhoto;
    map['product_num_offers'] = productNumOffers;
    map['product_minimum_offer_price'] = productMinimumOfferPrice;
    map['is_best_seller'] = isBestSeller;
    map['is_amazon_choice'] = isAmazonChoice;
    map['is_prime'] = isPrime;
    map['climate_pledge_friendly'] = climatePledgeFriendly;
    map['sales_volume'] = salesVolume;
    map['delivery'] = delivery;
    return map;
  }

}