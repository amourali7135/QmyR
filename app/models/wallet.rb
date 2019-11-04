class Wallet < ApplicationRecord
  has_many :personals
  has_any :businesses

  t.references :walletable, polymorphic: true
end
