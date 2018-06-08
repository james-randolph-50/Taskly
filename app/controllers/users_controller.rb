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
        @user = User.new(user_params)
        respond_to do |format|
            if @user.save
                session[:user_id] = @user.id
                format.html { redirecto_to User_path(@user), notice: "Welcome to Taskly" }
            else
                format.html { render :new }
            end
        end
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
