class WalletsController < ApplicationController
  def index

  end

  def new
    # @user = current_user
    # @wallet = Wallet.new
  end

  def create
    # @wallet = Wallet.new
    # @user = current_user
    # if @wallet.save
    #   redirect_do dashboard_path
    # end
  end

  def show
    @wallet = current_user.wallet
    # @personals = Personal.where(current_user.transaction.sender_id)
    # @businesses = Business.where(current_user.transaction.sender_id)
    @personals = Personal.all
    @businesses = Business.all
  end

  def update

  end

  def destroy

  end

  def edit

  end
end
