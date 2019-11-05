class PersonalController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private

  def personal_params
    params.require(:personal).permit( :first_name, :last_name, :nick_name, :email, :phone, :occupation, :photo, :occupation, :facebook, :instagram, :snapchat, :linked_in, :twitter, :pinterest, :whatsapp, :skype, :line, :youtube, :website, :tumblr, :soundcloud, :vk, :wechat, :github, :tiktok, :vine, :user_id )
  end
end
