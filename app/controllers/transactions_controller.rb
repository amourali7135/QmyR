class TransactionsController < ApplicationController
  def index

  end

  def new

  end

  def create
    @transaction = Transaction.new
    @transaction.receiver_id = current_user.wallet.id
    begin
      account = Personal.find(params[:format])
    rescue
      account = Business.find(params[:format])
    end
    @transaction.sender_id = account.user.wallet.id

    if @transaction.save
    redirect_to dashboard_path
    else
      render 'new'
    end

  end

  def show

  end

  def update

  end

  def destroy

  end

  def edit

  end

   def transaction_params
    params.require(:transaction).permit( )
  end

end
