class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end
  
  def show
    @order = Order.find(params[:id])
    @orders = current_user.orders
  end

  def new
    @order = Order.new
    @order_items=current_order.order_items
  end

  def create
    @order = Order.new(order_params)
    @order.order_items << current_order.order_items
    @order.user = current_user
    if @order.save
      redirect_to orders_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    
    redirect_to root_path, status: :see_other
  end

  private
    def order_params
      params.require(:order).permit(:email,:address,:postal_code,:user_id)
    end
    
end
