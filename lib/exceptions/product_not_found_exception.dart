class ProductNotFoundException implements Exception {
  String _barcode;

  ProductNotFoundException(this._barcode);

  String errorMessage() {
    return "Product ${this.barcode} was not found";
  }

  String get barcode {
    return this._barcode;
  }
}
