class Wallet < ApplicationRecord
  has_many :personals
  has_many :businesses
  # belongs_to :user
  belongs_to :walletable, polymorphic: true


end
