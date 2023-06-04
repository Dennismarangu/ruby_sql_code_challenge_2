
user1 = User.create(name: "John")
user2 = User.create(name: "Jane")

product1 = Product.create(name: "Product A")
product2 = Product.create(name: "Product B")

Review.create(star_rating: 4, comment: "Great product!", user: user1, product: product1)
Review.create(star_rating: 3, comment: "Average product.", user: user2, product: product1)
Review.create(star_rating: 5, comment: "Excellent product!", user: user1, product: product2)
