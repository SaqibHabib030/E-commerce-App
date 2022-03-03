module ApplicationHelper

# for order creation
    
def current_order

    
     
        if Order.find_by_id(session[:order_id]).nil?
            order = Order.new(user: current_user)
            
        else
            Order.find_by_id(session[:order_id])
        end
    end
end

