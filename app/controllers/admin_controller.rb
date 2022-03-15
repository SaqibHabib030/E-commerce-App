class AdminController < ApplicationController

  def index
    @users = User.all
  end
  
  def new
   @user=User.new
  end
  
  def create
   @user = User.create(user_params)
   if @user.save
    @user.remove_role :customer
    @user.add_role :vendor
    redirect_to admin_index_path
   else
    redirect_to new_admin_path, notice: "Failed to create new vendor"
   end
  end
  
  def edit
   @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_index_path, notice: "Role updated"
    else
      flash.now[:error] = "Error: must assigned role"
      render :edit
    end
   end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to root_path, status: :see_other
    end
  
    private
    def user_params
      params.require(:admin).permit(:email, :password, :password_confirmation)
    end
end