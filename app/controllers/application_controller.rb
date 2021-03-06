class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_cart
    session[:cart] ||= [] #has to be touching the or
  end

  def cart
    session[:cart] = current_cart
    current_cart
  end


end
