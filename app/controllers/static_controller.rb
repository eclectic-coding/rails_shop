class StaticController < ApplicationController
  def home
    @pagy, @products = pagy(Product.all, items: 9)
  end
end
