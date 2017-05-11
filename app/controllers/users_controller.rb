class UsersController < ApplicationController
  def index
  	@artists = User.all
  end

  def show
  	@artist = User.find(params[:id])
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
