class SessionsController < ApplicationController

  def create
    admin = Admin.find_by_adminname(params[:adminname])
    #find admin and check if password is correct
    if admin && admin.authenticate(params[:password])
      #save the session as admin id to readmin
      session[:admin_id] = admin.id
      redirect_to '/admindash'
    else
    #redirected to adminlogin
      redirect_to '/adminlogin'
    end
  end



  def destroy
    session[:admin_id] = nil
    redirect_to '/adminlogin'
  end
end
