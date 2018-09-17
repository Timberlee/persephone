class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)

      if @user.save
        redirect_to @user
      else

        render 'new'
      end
    end

    def update
  if @user.update(user_params)

    redirect_to @user
  else
    render 'edit'
  end
end



    def edit
    end

    def profile

    end

    def show

    end

    def index
      @user = User.all
    end

    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :bio, :photo, :password, :password_confirmation, :location)
    end

    def find_user
      @user = User.find(params[:id])
    end

  end
