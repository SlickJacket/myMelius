class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    render json: @users
  end

  def profile
    render json: current_user
  end

  def create
    user = User.create(user_params)

    if user.valid?
      render json: {token: create_token(user.id)}
    else
      render json: {errors: user.errors.full_messages}, status: 422
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.permit(:name, :title, :email, :password, :company_id)
    end
end
