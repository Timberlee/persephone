class UsersController < ApplicationController
  include HTTParty
  include JSON

  before_action :find_user, only: [:edit, :update]

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)

      if @user.save
        redirect_to root_path
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

    @user = current_user
     @news = HTTParty.get('https://newsapi.org/v2/top-headlines?'\
       'country=us&'\
       'apiKey=c71e9cd76635457fbf224a4e47c9603f')
     @request_hash = JSON.parse(@news.to_s)
     @xs = @request_hash['articles']
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
