class DataProductModel {
  dynamic productId;
  String productImage;
  dynamic productPrice;
  String productDescription;
  String productName;
  String productState;

  DataProductModel({
    this.productId = 0,
    this.productImage = 'assets/images/medicine.png',
    this.productPrice = 00,
    this.productName = 'Name Product',
    this.productState = 'state av',
    this.productDescription = "There are many fake or unproven medical products and"
        " methods that claim to diagnose, prevent or cure COVID-19.[1] "
        "Fake medicines sold for COVID-19 may not contain the ingredients"
        "they claim to contain, and may even contain harmful ingredients.[2][1][3]"
        " In March 2020, the World Health Organization (WHO)"
        " released a statement recommending against taking any",
  });
  factory DataProductModel.fromJson(jsonData) {
    return DataProductModel(
      productId: jsonData['id']?? '',
      productName: jsonData['pro_name']?? '',
      productPrice: jsonData['price'].toDouble(),
      productDescription: jsonData['description'] ?? '',
      productImage: jsonData['image']?? '',
      //managerId: jsonData['manager_id'],
       //proCode: jsonData['pro_code'],
       //expDate: jsonData['exp_date'],
       //stock: jsonData['stock'],
      //limt: jsonData['limt'],
    );
  }
}





  /*

  factory DataProductModel.fromJson(jsonData) {
    return DataProductModel(
      productId: jsonData['id'],
      productName: jsonData['pro_name'],
      productPrice: jsonData['price'],
      productDescription: jsonData['description'],
      productImage: jsonData['image'],
    );
  }
  */