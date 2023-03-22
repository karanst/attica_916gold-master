import 'dart:convert';
/// error : false
/// message : "get Successfully"
/// data : [{"id":"114","product_identity":null,"category_id":"48","sub_category_id":"0","seller_id":"1","tax":"1","row_order":"0","type":"simple_product","stock_type":null,"name":"2g Gold Bar 24kt - Ganesha","short_description":"Good Quality","slug":"2g-gold-bar-24kt-ganesha","indicator":"0","cod_allowed":"0","minimum_order_quantity":"1","quantity_step_size":"1","total_allowed_quantity":null,"is_prices_inclusive_tax":"0","is_returnable":"0","is_cancelable":"0","cancelable_till":null,"image":"uploads/media/2022/042e917936dd9dc252b4678eab741d06.jpg","other_images":"[\"uploads\\/media\\/2022\\/042e917936dd9dc252b4678eab741d06.jpg\"]","video_type":"","video":"","tags":"","warranty_period":"","guarantee_period":"","made_in":null,"sku":null,"price":"1000","weight":"10","stock":null,"availability":null,"rating":"0","no_of_ratings":"0","description":"","deliverable_type":"1","deliverable_zipcodes":null,"status":"1","date_added":"2022-03-28 15:36:37"}]

ProductDetailsModel productDetailsModelFromJson(String str) => ProductDetailsModel.fromJson(json.decode(str));
String productDetailsModelToJson(ProductDetailsModel data) => json.encode(data.toJson());
class ProductDetailsModel {
  ProductDetailsModel({
      bool? error, 
      String? message, 
      List<Data>? data,}){
    _error = error;
    _message = message;
    _data = data;
}

  ProductDetailsModel.fromJson(dynamic json) {
    _error = json['error'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _error;
  String? _message;
  List<Data>? _data;
ProductDetailsModel copyWith({  bool? error,
  String? message,
  List<Data>? data,
}) => ProductDetailsModel(  error: error ?? _error,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get error => _error;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "114"
/// product_identity : null
/// category_id : "48"
/// sub_category_id : "0"
/// seller_id : "1"
/// tax : "1"
/// row_order : "0"
/// type : "simple_product"
/// stock_type : null
/// name : "2g Gold Bar 24kt - Ganesha"
/// short_description : "Good Quality"
/// slug : "2g-gold-bar-24kt-ganesha"
/// indicator : "0"
/// cod_allowed : "0"
/// minimum_order_quantity : "1"
/// quantity_step_size : "1"
/// total_allowed_quantity : null
/// is_prices_inclusive_tax : "0"
/// is_returnable : "0"
/// is_cancelable : "0"
/// cancelable_till : null
/// image : "uploads/media/2022/042e917936dd9dc252b4678eab741d06.jpg"
/// other_images : "[\"uploads\\/media\\/2022\\/042e917936dd9dc252b4678eab741d06.jpg\"]"
/// video_type : ""
/// video : ""
/// tags : ""
/// warranty_period : ""
/// guarantee_period : ""
/// made_in : null
/// sku : null
/// price : "1000"
/// weight : "10"
/// stock : null
/// availability : null
/// rating : "0"
/// no_of_ratings : "0"
/// description : ""
/// deliverable_type : "1"
/// deliverable_zipcodes : null
/// status : "1"
/// date_added : "2022-03-28 15:36:37"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      dynamic productIdentity, 
      String? categoryId, 
      String? subCategoryId, 
      String? sellerId, 
      String? tax, 
      String? rowOrder, 
      String? type, 
      dynamic stockType, 
      String? name, 
      String? shortDescription, 
      String? slug, 
      String? indicator, 
      String? codAllowed, 
      String? minimumOrderQuantity, 
      String? quantityStepSize, 
      dynamic totalAllowedQuantity, 
      String? isPricesInclusiveTax, 
      String? isReturnable, 
      String? isCancelable, 
      dynamic cancelableTill, 
      String? image, 
      String? otherImages, 
      String? videoType, 
      String? video, 
      String? tags, 
      String? warrantyPeriod, 
      String? guaranteePeriod, 
      dynamic madeIn, 
      dynamic sku, 
      String? price, 
      String? weight, 
      dynamic stock, 
      dynamic availability, 
      String? rating, 
      String? noOfRatings, 
      String? description, 
      String? deliverableType, 
      dynamic deliverableZipcodes, 
      String? status, 
      String? dateAdded,}){
    _id = id;
    _productIdentity = productIdentity;
    _categoryId = categoryId;
    _subCategoryId = subCategoryId;
    _sellerId = sellerId;
    _tax = tax;
    _rowOrder = rowOrder;
    _type = type;
    _stockType = stockType;
    _name = name;
    _shortDescription = shortDescription;
    _slug = slug;
    _indicator = indicator;
    _codAllowed = codAllowed;
    _minimumOrderQuantity = minimumOrderQuantity;
    _quantityStepSize = quantityStepSize;
    _totalAllowedQuantity = totalAllowedQuantity;
    _isPricesInclusiveTax = isPricesInclusiveTax;
    _isReturnable = isReturnable;
    _isCancelable = isCancelable;
    _cancelableTill = cancelableTill;
    _image = image;
    _otherImages = otherImages;
    _videoType = videoType;
    _video = video;
    _tags = tags;
    _warrantyPeriod = warrantyPeriod;
    _guaranteePeriod = guaranteePeriod;
    _madeIn = madeIn;
    _sku = sku;
    _price = price;
    _weight = weight;
    _stock = stock;
    _availability = availability;
    _rating = rating;
    _noOfRatings = noOfRatings;
    _description = description;
    _deliverableType = deliverableType;
    _deliverableZipcodes = deliverableZipcodes;
    _status = status;
    _dateAdded = dateAdded;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _productIdentity = json['product_identity'];
    _categoryId = json['category_id'];
    _subCategoryId = json['sub_category_id'];
    _sellerId = json['seller_id'];
    _tax = json['tax'];
    _rowOrder = json['row_order'];
    _type = json['type'];
    _stockType = json['stock_type'];
    _name = json['name'];
    _shortDescription = json['short_description'];
    _slug = json['slug'];
    _indicator = json['indicator'];
    _codAllowed = json['cod_allowed'];
    _minimumOrderQuantity = json['minimum_order_quantity'];
    _quantityStepSize = json['quantity_step_size'];
    _totalAllowedQuantity = json['total_allowed_quantity'];
    _isPricesInclusiveTax = json['is_prices_inclusive_tax'];
    _isReturnable = json['is_returnable'];
    _isCancelable = json['is_cancelable'];
    _cancelableTill = json['cancelable_till'];
    _image = json['image'];
    _otherImages = json['other_images'];
    _videoType = json['video_type'];
    _video = json['video'];
    _tags = json['tags'];
    _warrantyPeriod = json['warranty_period'];
    _guaranteePeriod = json['guarantee_period'];
    _madeIn = json['made_in'];
    _sku = json['sku'];
    _price = json['price'];
    _weight = json['weight'];
    _stock = json['stock'];
    _availability = json['availability'];
    _rating = json['rating'];
    _noOfRatings = json['no_of_ratings'];
    _description = json['description'];
    _deliverableType = json['deliverable_type'];
    _deliverableZipcodes = json['deliverable_zipcodes'];
    _status = json['status'];
    _dateAdded = json['date_added'];
  }
  String? _id;
  dynamic _productIdentity;
  String? _categoryId;
  String? _subCategoryId;
  String? _sellerId;
  String? _tax;
  String? _rowOrder;
  String? _type;
  dynamic _stockType;
  String? _name;
  String? _shortDescription;
  String? _slug;
  String? _indicator;
  String? _codAllowed;
  String? _minimumOrderQuantity;
  String? _quantityStepSize;
  dynamic _totalAllowedQuantity;
  String? _isPricesInclusiveTax;
  String? _isReturnable;
  String? _isCancelable;
  dynamic _cancelableTill;
  String? _image;
  String? _otherImages;
  String? _videoType;
  String? _video;
  String? _tags;
  String? _warrantyPeriod;
  String? _guaranteePeriod;
  dynamic _madeIn;
  dynamic _sku;
  String? _price;
  String? _weight;
  dynamic _stock;
  dynamic _availability;
  String? _rating;
  String? _noOfRatings;
  String? _description;
  String? _deliverableType;
  dynamic _deliverableZipcodes;
  String? _status;
  String? _dateAdded;
Data copyWith({  String? id,
  dynamic productIdentity,
  String? categoryId,
  String? subCategoryId,
  String? sellerId,
  String? tax,
  String? rowOrder,
  String? type,
  dynamic stockType,
  String? name,
  String? shortDescription,
  String? slug,
  String? indicator,
  String? codAllowed,
  String? minimumOrderQuantity,
  String? quantityStepSize,
  dynamic totalAllowedQuantity,
  String? isPricesInclusiveTax,
  String? isReturnable,
  String? isCancelable,
  dynamic cancelableTill,
  String? image,
  String? otherImages,
  String? videoType,
  String? video,
  String? tags,
  String? warrantyPeriod,
  String? guaranteePeriod,
  dynamic madeIn,
  dynamic sku,
  String? price,
  String? weight,
  dynamic stock,
  dynamic availability,
  String? rating,
  String? noOfRatings,
  String? description,
  String? deliverableType,
  dynamic deliverableZipcodes,
  String? status,
  String? dateAdded,
}) => Data(  id: id ?? _id,
  productIdentity: productIdentity ?? _productIdentity,
  categoryId: categoryId ?? _categoryId,
  subCategoryId: subCategoryId ?? _subCategoryId,
  sellerId: sellerId ?? _sellerId,
  tax: tax ?? _tax,
  rowOrder: rowOrder ?? _rowOrder,
  type: type ?? _type,
  stockType: stockType ?? _stockType,
  name: name ?? _name,
  shortDescription: shortDescription ?? _shortDescription,
  slug: slug ?? _slug,
  indicator: indicator ?? _indicator,
  codAllowed: codAllowed ?? _codAllowed,
  minimumOrderQuantity: minimumOrderQuantity ?? _minimumOrderQuantity,
  quantityStepSize: quantityStepSize ?? _quantityStepSize,
  totalAllowedQuantity: totalAllowedQuantity ?? _totalAllowedQuantity,
  isPricesInclusiveTax: isPricesInclusiveTax ?? _isPricesInclusiveTax,
  isReturnable: isReturnable ?? _isReturnable,
  isCancelable: isCancelable ?? _isCancelable,
  cancelableTill: cancelableTill ?? _cancelableTill,
  image: image ?? _image,
  otherImages: otherImages ?? _otherImages,
  videoType: videoType ?? _videoType,
  video: video ?? _video,
  tags: tags ?? _tags,
  warrantyPeriod: warrantyPeriod ?? _warrantyPeriod,
  guaranteePeriod: guaranteePeriod ?? _guaranteePeriod,
  madeIn: madeIn ?? _madeIn,
  sku: sku ?? _sku,
  price: price ?? _price,
  weight: weight ?? _weight,
  stock: stock ?? _stock,
  availability: availability ?? _availability,
  rating: rating ?? _rating,
  noOfRatings: noOfRatings ?? _noOfRatings,
  description: description ?? _description,
  deliverableType: deliverableType ?? _deliverableType,
  deliverableZipcodes: deliverableZipcodes ?? _deliverableZipcodes,
  status: status ?? _status,
  dateAdded: dateAdded ?? _dateAdded,
);
  String? get id => _id;
  dynamic get productIdentity => _productIdentity;
  String? get categoryId => _categoryId;
  String? get subCategoryId => _subCategoryId;
  String? get sellerId => _sellerId;
  String? get tax => _tax;
  String? get rowOrder => _rowOrder;
  String? get type => _type;
  dynamic get stockType => _stockType;
  String? get name => _name;
  String? get shortDescription => _shortDescription;
  String? get slug => _slug;
  String? get indicator => _indicator;
  String? get codAllowed => _codAllowed;
  String? get minimumOrderQuantity => _minimumOrderQuantity;
  String? get quantityStepSize => _quantityStepSize;
  dynamic get totalAllowedQuantity => _totalAllowedQuantity;
  String? get isPricesInclusiveTax => _isPricesInclusiveTax;
  String? get isReturnable => _isReturnable;
  String? get isCancelable => _isCancelable;
  dynamic get cancelableTill => _cancelableTill;
  String? get image => _image;
  String? get otherImages => _otherImages;
  String? get videoType => _videoType;
  String? get video => _video;
  String? get tags => _tags;
  String? get warrantyPeriod => _warrantyPeriod;
  String? get guaranteePeriod => _guaranteePeriod;
  dynamic get madeIn => _madeIn;
  dynamic get sku => _sku;
  String? get price => _price;
  String? get weight => _weight;
  dynamic get stock => _stock;
  dynamic get availability => _availability;
  String? get rating => _rating;
  String? get noOfRatings => _noOfRatings;
  String? get description => _description;
  String? get deliverableType => _deliverableType;
  dynamic get deliverableZipcodes => _deliverableZipcodes;
  String? get status => _status;
  String? get dateAdded => _dateAdded;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['product_identity'] = _productIdentity;
    map['category_id'] = _categoryId;
    map['sub_category_id'] = _subCategoryId;
    map['seller_id'] = _sellerId;
    map['tax'] = _tax;
    map['row_order'] = _rowOrder;
    map['type'] = _type;
    map['stock_type'] = _stockType;
    map['name'] = _name;
    map['short_description'] = _shortDescription;
    map['slug'] = _slug;
    map['indicator'] = _indicator;
    map['cod_allowed'] = _codAllowed;
    map['minimum_order_quantity'] = _minimumOrderQuantity;
    map['quantity_step_size'] = _quantityStepSize;
    map['total_allowed_quantity'] = _totalAllowedQuantity;
    map['is_prices_inclusive_tax'] = _isPricesInclusiveTax;
    map['is_returnable'] = _isReturnable;
    map['is_cancelable'] = _isCancelable;
    map['cancelable_till'] = _cancelableTill;
    map['image'] = _image;
    map['other_images'] = _otherImages;
    map['video_type'] = _videoType;
    map['video'] = _video;
    map['tags'] = _tags;
    map['warranty_period'] = _warrantyPeriod;
    map['guarantee_period'] = _guaranteePeriod;
    map['made_in'] = _madeIn;
    map['sku'] = _sku;
    map['price'] = _price;
    map['weight'] = _weight;
    map['stock'] = _stock;
    map['availability'] = _availability;
    map['rating'] = _rating;
    map['no_of_ratings'] = _noOfRatings;
    map['description'] = _description;
    map['deliverable_type'] = _deliverableType;
    map['deliverable_zipcodes'] = _deliverableZipcodes;
    map['status'] = _status;
    map['date_added'] = _dateAdded;
    return map;
  }

}