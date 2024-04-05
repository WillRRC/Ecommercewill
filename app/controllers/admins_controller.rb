class AdminsController < ApplicationController

  def new
  end

  def create
    admin = Admin.new(admin_params)
    if admin.save
      session[:admin_id] = admin.id
      redirect_to "/admindash"
    else
      redirect_to '/signup'
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:adminname, :password, :password_confirmation)
  end
end
