class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :personal
  has_one :business
  has_one :wallet

  after_create :autocreatewallet

  private

  def autocreatewallet
    # self.wallet.create!
    Wallet.create(user: self)
  end

end
