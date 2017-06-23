class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
      #unless current_user.role_id == "User"
        @artists = User.all
      #else
      #  redirect_to root_url
      #end
  	
  end

  def show
  	@artist = User.find(params[:id])
  end

  def index_pro
      unless current_user.role_id == "User"
        @pro = User.all
      else
        redirect_to root_url
      end
  end

  def my_account
    @user = current_user
  end

def update
	@user = User.find(params[:id])
    if @user.update_attributes(user_params)
        flash[:success] = "Edit Successful."
        redirect_to @user
    else
        render 'edit'
    end
   end

     private
      def user_params
           params.require(:user).permit(:role_id, :email, :password, :password_confirmation, :remember_me, :nom, :facebook, :twitter, :instagram, :description, :adresse, :phone)
      end

end
