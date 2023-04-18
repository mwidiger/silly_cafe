class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      # Check to see if the current session has an order id stored
      order = Order.find(session[:order_id])
      return Order.create(user: current_user) unless order.user_id = current_user.id
      order
    else
      # Check to see if the user has an order from a previous session
      Order.where(user: current_user).last || Order.create(user: current_user)
    end
  end  

private

  def order_expiration_time
    24.hours
  end
end
