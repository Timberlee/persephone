class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to root_path
    else
      msg = 'Invalid Creds'
      render 'new'
    end
end
def destroy
  session[:user_id] = nil
  log_out if logged_in?
  p 'Logged out sucessfully'
  redirect_to root_path
end

def facebook
  p 'started facebook login'
   p 'request hash below'
   request.env['omniauth.auth']
   user = User.from_omniauth(request.env['omniauth.auth'])
   p 'created user from omniauth hash'
   p user
   session[:user_id] = user.id
   redirect_to '/success'
 end

end
