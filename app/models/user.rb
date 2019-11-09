class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :personal, dependent: :destroy
  has_one :business, dependent: :destroy
  has_one :wallet, dependent: :destroy
  # has_many :transactions, through: :wallets, source: :walletable, source_type: 'Receiver' #delete if fail
  # has_many :transactions, through: :wallets, source: :walletable, source_type: 'Sender' #delete if fail
  # has_many :transactions_one, class_name: 'Transaction', foreign_key: 'sender_id'
  # has_many :transactions_two, class_name: 'Transaction', foreign_key: 'receiver_id'


  after_create :autocreatewallet

  # acts_as_follower


  private

  def autocreatewallet
    # self.wallet.create!
    Wallet.create(user: self)
  end

end
