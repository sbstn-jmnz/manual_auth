class SessionsController < ApplicationController
  def destroy
    reset_session
    redirect_to root_path
  end

  def new; @user = User.new; end
  
  def create 
   user =  User.find_by(email: params[:user][:email])
   if user.present? && user.password ==  params[:user][:password]
    session[:user_id] = user.id
    redirect_to root_path
   else
    redirect_to root_path, alert: 'No se pudo autenticar'
   end
  end
end
