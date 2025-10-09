module CurrentCart
  private
  def set_cart
    @cart = Cart.find(session[:cart_id])
    # unless @cart
    #   flash[:alert] = "Invalid cart"
    #   redirect_to store_index_url
    # end
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end