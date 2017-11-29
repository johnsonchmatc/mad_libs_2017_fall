class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save && UserMailer.account_activation(@user).deliver_now
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    # Notice the formatting of the parameters going into the permit method
    def user_params
      params.require(:user).permit(:first_name,
                                   :last_name,
                                   :email,
                                   :password,
                                   :password_confirmation)
    end
end
