class AdminController < ApplicationController
  # the index action sets up the count of orders
  def index
    @total_orders = Order.count
    # @current_user = User.find_by(name: session[:user_id])
  end

end
