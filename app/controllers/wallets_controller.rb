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
    @personals = (Transaction.where(receiver_id: current_user.wallet.id) + Transaction.where(sender_id: current_user.wallet.id)).map { |tr| [Wallet.find(tr.sender_id).user, Wallet.find(tr.receiver_id).user] }.flatten.reject { |user| user == current_user }.map { |user| user.personal }.compact
    @businesses = (Transaction.where(receiver_id: current_user.wallet.id) + Transaction.where(sender_id: current_user.wallet.id)).map { |tr| [Wallet.find(tr.sender_id).user, Wallet.find(tr.receiver_id).user] }.flatten.reject { |user| user == current_user }.map { |user| user.business }.compact
    # raise
    # @transaction = Transaction.find(params[:id])
  end

  def update

  end

  def destroy

  end

  def edit

  end
end
