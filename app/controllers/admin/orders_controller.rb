class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:customer_id, :postal_code, :address, :name, :postage, :total_price, :payment_method, :status)
  end
end
