class UserImagesController < ApplicationController
    class UsersController < ApplicationController
        before_action :set_user, only: [:show, :update, :destroy]
        
            def index
            @user_images = UserImages.all
        
            render json: @user_images
            end
        
            def show
            # byebug
            # company = current_user.company
            render json: @user_image
            end
        
            def create
            image = UserImages.create(user_params)
        
            if image.save?
                render json: image
            else
                render json: {errors: image.errors.full_messages}, status: 422
            end
            end
        
            def update
            if @user_image.update(user_params)
                render json: @user_image
            else
                render json: @user_image.errors, status: :unprocessable_entity
            end
            end
        
            def destroy
            @user_image.destroy
            end
        
            private
            def set_user
                @user_image = UserImage.find(params[:id])
            end
        
            def user_params
                params.permit(:image_file_name, :image_content_type, :image_file_size, :image_updated_at, :user_id)
            end
        end

end
