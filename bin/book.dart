class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  void display(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Original Price: \$${price.toStringAsFixed(2)}");
    print(
      "Price after ${discountPercent.toStringAsFixed(0)}% discount: "
      "\$${discountedPrice(discountPercent).toStringAsFixed(2)}",
    );
  }
}

void main() {
  Book book1 = Book("Ghara-Baire", "Rabindranath Tagore", 20);
  Book book2 = Book("Nondito Noroke", "Humayun Ahmed", 35);

  book1.display(10);
  book2.display(15);
}
