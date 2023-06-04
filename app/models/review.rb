
class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def user
    User.find_by(id: self.user_id)
  end

  def product
    Product.find_by(id: self.product_id)
  end
end
