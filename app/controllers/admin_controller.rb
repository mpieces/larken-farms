class AdminController < ApplicationController
  # the index action sets up the count of orders
  def index
    @total_orders = Order.count
  end

end
