class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user
      @user = current_user
      @artist = Artist.find_by(user_id: @user.id) #user_id: refers to artist table one!
  end

  def dashboard
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
end
