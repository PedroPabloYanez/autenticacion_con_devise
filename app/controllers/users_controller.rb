class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
        @stories = current_user.stories
    end

    def update
        @user = User.find(params[:id])
        @user.admin = !@user.admin
        @user.save 
        redirect_to dashboards_index_path, notice: 'User saved'
    end
    
    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
      params.require(:story).permit(:title, :picture, :content)
    end
end
