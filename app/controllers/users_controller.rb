class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # ------ HTML Form (5) ------ #
    # ------ Commented out because of HTML Form (10) ------ #
    # @user = User.new(
    #   username: params[:username],
    #   email: params[:email],
    #   password: params[:password]
    # )

    # ------ HTML Form (12) ------ #
    @user = User.new(user_params)

    # HTML Form (5)
    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # ------ HTML Form (11) ------ #
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
  private :user_params

end
