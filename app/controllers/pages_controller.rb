class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :help, :contact]

  def home
    @user = current_user
    if current_user
      redirect_to dashboard_path
    end
  end

  def dashboard
    @user = current_user
    @personal = current_user.personal
    @business = current_user.business
  end

  def qrmade
  end

  def registered
  end

  def help
  end

  def contact
  end

  def about
  end

  def postregistration
  end

end
