class WelcomeController < ApplicationController
  def index
  	# The last 12 products
    @products = Product.find(:all, :order => "id desc", :limit => 12).reverse
  end
end
