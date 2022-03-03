class OrderItemsController < ApplicationController

  before_action :set_order

def create
  @order_item = @order.order_items.new(order_params)
   if @order_item.save
 
    redirect_to homepage_index_path
   else
    redirect_to root_path
   end
    session[:order_id] = @order.id
end

def update
  @order_item = @order.order_items.find(params[:id])
   if @order_item.update(order_params)
    redirect_to cart_path
   else
    redirect_to root_path 
    @order_items = current_order.order_items
  end
end

def destroy
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    redirect_to cart_path
    @order_item = current_order.order_items
end
  
private
  
def order_params
   params.require(:order_item).permit(:product_id, :quantity)
  end

def set_order
  @order = current_order
end

end
