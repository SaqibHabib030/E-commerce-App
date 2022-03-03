# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
#   def create
#     super
#  byebug
#     if params['user']['vendor'] == "1"
#       if User.find_by(email: params['user']['email']).has_role? 'vendor'
#         sign_in(resource_name, resource)
#       end
#     else
      
#     end
    # if current_user.has_role? :vendor 
    #   redirect_to products_path
    # elsif current_user.has_role? :admin
    #   redirect_to admin_index_path
    # else 
    # end
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:vendor])
  end
end
