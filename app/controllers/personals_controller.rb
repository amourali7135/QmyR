class PersonalsController < ApplicationController
  def index
  end

  def new
    @user = current_user
    @personal = Personal.new
  end

  def create
    @personal = Personal.new(personal_params)
    @user = current_user
    if @personal.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  def show
    @personal = Personal.find(params[:id])
  end

  def update
    @personal = Personal.find(params[:id])
     if @personal.update(personal_params)
      redirect_to dashboard_path
    else
      render 'edit'
    end
  end

  def destroy
    @personal = Personal.find(params[:id])
    @business.destroy
    redirect_to root_path
  end

  def edit
    @personal = Personal.find(params[:id])
  end

  private

  def personal_params
    params.require(:personal).permit( :first_name, :last_name, :nick_name, :email, :phone, :occupation, :photo, :occupation, :facebook, :instagram, :snapchat, :linked_in, :twitter, :pinterest, :whatsapp, :skype, :line, :youtube, :website, :tumblr, :soundcloud, :vk, :wechat, :github, :tiktok, :vine, :user_id )
  end
end
