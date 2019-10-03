class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy, :user_average, :datetime]

  def index
    @users = User.all

    render json: @users
  end

  def profile
    # byebug
    
    render json: current_user, include: [:company, :reviewees, :reviewers, :reviewing_users, :reviewed_users]
  end

  def show
    # byebug
    # company = current_user.company
    render json: @user, include: [:company, :reviewees, :reviewers, :reviewing_users, :reviewed_users]
  end

  def create
    user = User.create(user_params)

    if user.valid?
      render json: {user: user, token: create_token(user.id)}
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

  def user_average 
    
    render json: @user.average
  end

def datetime

  render json: @user.datetime
end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.permit(:name, :title, :email, :password, :company_id, :user_rating, :image_url)
    end
end
