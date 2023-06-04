class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews

  def reviews
    Review.where(user_id: self.id)
  end

  def products
    Product.joins(:reviews).where(reviews: { user_id: self.id })
  end

  def favorite_product
    products.order("reviews.star_rating DESC").first
  end

  def remove_reviews(product)
    reviews = Review.where(user_id: self.id, product_id: product.id)
    reviews.destroy_all
  end
end
