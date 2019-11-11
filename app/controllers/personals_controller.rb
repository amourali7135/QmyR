class PersonalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
  end

  def new
    # @user = current_user
    @personal = Personal.new
  end

  def create
    @personal = Personal.new(personal_params)
    @personal.user_id = current_user.id
    # raise
    if @personal.save
      flash[:notice] = "Your personal profile was successfully created!" 
      redirect_to dashboard_path
    else
      flash[:notice] = "There was an error, please try again!" 
      render "new"
    end
  end

  def show
    @personal = Personal.find(params[:id])
  end

  def update
    @personal = Personal.find(params[:id])
    if @personal.update(personal_params)
       flash[:notice] = "Your personal profile was successfully edited!" 
      redirect_to dashboard_path
    else
      flash[:notice] = "There was an error, please try again!" 
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
