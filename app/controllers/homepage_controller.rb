class HomepageController < ApplicationController
    before_action :authenticate_user!
    protect_from_forgery prepend: true
   
    
    def index

      
        if current_user.has_role? :admin
            redirect_to admin_index_path 
        elsif current_user.has_role? :vendor
            redirect_to products_path
        else 
           
     end  


        @products = Product.all

        @order_item = current_order.order_items.new


    end
    
end
