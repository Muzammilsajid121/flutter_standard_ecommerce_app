// class TpricingCalculator {
//   // calulator price on tax
//   //skiped
//   //https://www.youtube.com/watch?v=3StjTeWs-ZQ&t=856s
// }

class TPricingCalculator {
  double basePrice;
  double shippingRate;
  double taxRate;

  TPricingCalculator(
      {this.basePrice = 0.0, this.shippingRate = 0.0, this.taxRate = 0.0});

  void setBasePrice(double price) {
    basePrice = price;
  }

  double calculateShippingCost(double weight, double distance) {
    // Example: shipping cost could be calculated as weight * distance * shippingRate
    return weight * distance * shippingRate;
  }

  double calculateTax() {
    return basePrice * taxRate;
  }

  double getTotalPrice(double weight, double distance) {
    double shippingCost = calculateShippingCost(weight, distance);
    double tax = calculateTax();
    return basePrice + shippingCost + tax;
  }
}

void main() {
  // Example usage
  TPricingCalculator calculator =
      TPricingCalculator(basePrice: 100.0, shippingRate: 0.05, taxRate: 0.1);

  calculator.setBasePrice(150.0);

  double weight = 2.0; // in kilograms
  double distance = 100.0; // in kilometers

  double shippingCost = calculator.calculateShippingCost(weight, distance);
  double tax = calculator.calculateTax();
  double totalPrice = calculator.getTotalPrice(weight, distance);

  print("Shipping Cost: \$${shippingCost.toStringAsFixed(2)}");
  print("Tax: \$${tax.toStringAsFixed(2)}");
  print("Total Price: \$${totalPrice.toStringAsFixed(2)}");
}