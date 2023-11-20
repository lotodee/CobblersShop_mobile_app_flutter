class TPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
//ask gpt to generate taxratecalculator
    double taxRate = 0.1;
    double taxAmount = productPrice * taxRate;
    double shippingCost = 10.0;
    double totalPrice = taxAmount + taxRate + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    //add logic based on shpping rate api
    return 5.00;
  }

  // static double calculateCartTotal(cartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0,
  //       (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
