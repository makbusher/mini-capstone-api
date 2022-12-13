# Product.create!([
#   {name: "Vinyl", price: "25.0", image_url: "https://f4.bcbits.com/img/0028859194_10.jpg", description: "Twen's 12 in sea-glass blue vinyl", inventory: nil},
#   {name: "sticker", price: "3.0", image_url: "https://i0.wp.com/hyperallergic-newspack.s3.amazonaws.com/uploads/2022/11/ivoted.jpg?fit=1200%2C900&quality=100&ssl=1", description: "funny 'I voted' sticker", inventory: nil},
#   {name: "shoes", price: "60.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc1LY3yrKvMrofrsI01VnJHVr8r2TS7qYwww&usqp=CAU", description: "white shoes you wear on your feet", inventory: nil},
#   {name: "shirt", price: "30.0", image_url: "http://cdn.shopify.com/s/files/1/0097/8966/9434/products/SWZ16_1024x.png?v=1661971741", description: "pink long-sleeve still woozy shirt", inventory: nil},
#   {name: "book", price: "17.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQdhRokXEL3fzce1c77j3kVq6h8t57lUy1A&usqp=CAU", description: "a book you can read", inventory: nil},
#   {name: "book", price: "17.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQdhRokXEL3fzce1c77j3kVq6h8t57lUy1A&usqp=CAU", description: "a book you can read", inventory: nil},
#   {name: "book", price: "17.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQdhRokXEL3fzce1c77j3kVq6h8t57lUy1A&usqp=CAU", description: "a book you can read", inventory: 3},
#   {name: "book", price: "17.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQdhRokXEL3fzce1c77j3kVq6h8t57lUy1A&usqp=CAU", description: "a book you can read", inventory: 3}
# ])

# fill in all the empty supplier_ids, randomly
  # get all the products without a supplier id
  # find random supplier id
  # assign the product to the random supplier id
  # save it
  # check it in postico?

# products = Product.where(supplier id: nil)

# products.each do |product|
#   suppliers = Supplier.all
#   random_supplier_id = suppliers.sample.id
#   product.supplier_id = random_supplier_id


