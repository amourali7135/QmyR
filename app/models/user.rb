class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  has_one :personal, dependent: :destroy
  has_one :business, dependent: :destroy
  has_one :wallet, dependent: :destroy
  has_many :receiver_transactions, through: :wallet, source: :transactions_receiver
  has_many :sender_transactions, through: :wallet, source: :transactions_sender
  
  after_create :autocreatewallet
  

  def transactions
    receiver_transactions + sender_transactions
  end

  def business_transactions
    transactions.filter { |transaction| transaction.kind == 'business'}
  end

  def personal_transactions
    transactions.filter { |transaction| transaction.kind == 'personal'}
  end

    private
  
  def autocreatewallet
    # self.wallet.create!
    Wallet.create(user: self)
  end
  
end
