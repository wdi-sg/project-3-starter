class Product < ApplicationRecord
  belongs_to :user
  belongs_to :purchase, :optional => true
  has_many :cart_item

  def add_purchase(user_id)
    @current_user = User.find(user_id)
    @current_user.purchases.create(product_id: self.id)
  end

  def in_cart(user_id)
    @product = Product.find(self.id)
    @cart_item = @product.cart_item.where(user_id: user_id)
    @cart_item.any?
  end

  def cart_id (user_id)
    @product = Product.find(self.id)
    @cart_item = @product.cart_item.where(user_id: user_id)
    @cart_id = @cart_item[0].id
  end

  def change_status(stock_status_id)
    @product = Product.find(self.id)

  end
  def product_id
    @product = Product.find(self.id)
  end

end
