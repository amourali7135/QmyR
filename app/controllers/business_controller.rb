class BusinessController < ApplicationController
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

  def business_params
    params.require(:business).permit( :first_name, :last_name, :linked_in, :photo, :work_phone, :work_email, :occupation, :job_title, :company, :user_id )
  end
end
