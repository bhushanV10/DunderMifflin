class UsersController < ApplicationController

  def index
    @users = User.includes(:company).all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'User added!'
      redirect_to users_path
    else
      flash[:danger] = @user.errors.full_messages.join(", ")
      redirect_to new_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.delete
      flash[:success] = 'User deleted!'
    else
      flash[:danger] = 'Failed to delete user!'
    end
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :company_id, :role)
  end
end
