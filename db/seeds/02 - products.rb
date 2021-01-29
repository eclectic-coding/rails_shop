# fakestoreapi - products
@response = Faraday.get "https://fakestoreapi.com/products"

products = JSON.parse(@response.body)

products.each do |product|
  Product.find_or_create_by(
    title: product["title"],
    price: product["price"],
    description: product["description"],
    category: product["category"],
    image: product["image"]
  )
end

puts "Seeded Product table"

