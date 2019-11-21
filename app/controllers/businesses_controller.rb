class BusinessesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
  end

  def new
    # @user = current_user
    @business = Business.new
  end



  def create
    @business = Business.new(business_params)
    @business.user_id = current_user.id
    if @business.save
      flash[:notice] = "Your business profile was successfully created!  Don't forget to make a personal profile as well if you haven't!"
      redirect_to dashboard_path
    else
      flash[:notice] = "There was an error, please try again!"
      render "new"
    end
  end

  def show
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      flash[:notice] = "Your business profile was successfully edited!"
      redirect_to dashboard_path
    else
      flash[:notice] = "There was an error, please try again!"
      render 'edit'
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    flash[:notice] = "Your business profile was successfully deleted!"
    redirect_to root_path
  end

  def edit
    @business = Business.find(params[:id])
  end




  private

  def business_params
    params.require(:business).permit( :first_name, :last_name, :linked_in, :photo, :work_phone, :work_email, :occupation, :job_title, :company, :user_id, :user)
  end
end
