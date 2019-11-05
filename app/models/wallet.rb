class Wallet < ApplicationRecord
  has_many :personals
  has_any :businesses
  belongs_to :user

  t.references :walletable, polymorphic: true
end
