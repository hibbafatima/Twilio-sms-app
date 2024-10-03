# app/controllers/users_controller.rb
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      alert_message = "Congratulations, #{@user.name}! You just took the first step towards your goals."
      respond_to do |format|
        format.html { redirect_to root_path, notice: alert_message }
        format.json { render json: { success: true, alert_message: alert_message } }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: { success: false, errors: @user.errors.full_messages } }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone_number)
  end
end
