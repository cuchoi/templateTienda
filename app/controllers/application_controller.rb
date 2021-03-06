class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_cart

private 

  def current_cart
  	@current_cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
  	@current_cart = Cart.create
  	session[:cart_id] = @current_cart.id
  end	
  @current_cart
end
