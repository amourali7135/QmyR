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
    if params["search"]
      @filter = params["search"]["search"]
      @businesses = Business.global_search(@filter)
      @personals = Personal.global_search(@filter)

    else
      # @businesses = @wallet.business_transactions.map { |transaction| transaction.sender.user == current_user ? transaction.receiver.user.business : transaction.sender.user.business }
      # @personals = @wallet.personal_transactions.map { |transaction| transaction.sender.user == current_user ? transaction.receiver.user.personal : transaction.sender.user.personal }

    @businesses = @wallet.business_transactions.map do |transaction|
        if transaction.sender.user == current_user
          if transaction.receiver.user.business
            transaction.receiver.user.business
          else
            transaction.receiver.user.personal
          end
		else
		  if transaction.sender.user.business
            transaction.sender.user.business
          else
            transaction.sender.user.personal
          end
        end
      end

      @personals = @wallet.personal_transactions.map do |transaction|
        if transaction.sender.user == current_user
          if transaction.receiver.user.personal
            transaction.receiver.user.personal
          else
            transaction.receiver.user.business
          end
		else
		  if transaction.sender.user.personal
            transaction.sender.user.personal
          else
            transaction.sender.user.business
          end
        end
      end

      # the last two lines can be simplified to current_user
      # @businesses = current_user.business_transactions
      # @personals = current_user.personal_transactions

      # @transaction = Transaction.find(params[:id]) #for created_at


      # @personals = (Transaction.where(receiver_id: current_user.wallet.id) + Transaction.where(sender_id: current_user.wallet.id)).map { |tr| [Wallet.find(tr.sender_id).user, Wallet.find(tr.receiver_id).user] }.flatten.reject { |user| user == current_user }.map { |user| user.personal }.compact
      # @businesses = (Transaction.where(receiver_id: current_user.wallet.id) + Transaction.where(sender_id: current_user.wallet.id)).map { |tr| [Wallet.find(tr.sender_id).user, Wallet.find(tr.receiver_id).user] }.flatten.reject { |user| user == current_user }.map { |user| user.business }.compact
    end
  end

  def update

  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    flash[:notice] = "Your wallet contact was successfully deleted!"
    redirect_to root_path
  end

  def edit

  end
end



