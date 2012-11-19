class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
    def current_fav_cart
      FavCart.find(session[:fav_cart_id])
    rescue ActiveRecord::RecordNotFound
      fav_cart = FavCart.create
      session[:fav_cart_id] = fav_cart.id
      fav_cart
    end
end
