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
      @transaction.kind = 'personal'
    rescue
      account = Business.find(params[:format])
      @transaction.kind = 'business'
    end

    @transaction.sender_id = account.user.wallet.id

    if @transaction.save
      flash[:notice] = "Contact saved successfully to your wallet!"
      redirect_to dashboard_path

    else
      flash[:notice] = "Contact was not saved successfully to your wallet!"   #ADD EVERYWHERE!
    end

  end

  def show

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

  def transaction_params
    params.require(:transaction).permit( )
  end

end
