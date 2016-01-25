class AdminController < AuthenticatedController

  # the index action sets up the count of orders
  def index
    @content_id = true
    @total_orders = Order.count
    # @current_user = User.find_by(name: session[:user_id])
    @content_id = true
  end

end
