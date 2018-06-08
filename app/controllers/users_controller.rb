class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def show
        @message = params[:message] if params[:message]
        @message ||= false
    end

    def new
        @user = User.new
    end

    def create
    end
    

    def edit
    end

    def update
    end

    private

    def set_user
    end

    def user_params
    end
end
