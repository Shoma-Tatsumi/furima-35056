class OrdersController < ApplicationController
  def index
    @order_address = OrderAddress.new
  end
  def create
    @order_address = OrderAddress.create(order_params)
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def order_params
    params.require(:order_address).permit(:postal_code, :prefecture_id, :city, :house_number, :building_number, :phone_number).merge(item_id: item.id, user_id: current_user.id, order_id: order.id)
  end
end
