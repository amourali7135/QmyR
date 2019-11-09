class Wallet < ApplicationRecord
  has_many :transactions_sender, class_name: 'Transaction', foreign_key: 'sender_id', dependent: :destroy
  has_many :transactions_receiver, class_name: 'Transaction', foreign_key: 'receiver_id', dependent: :destroy
  belongs_to :user
  # belongs_to :walletable, polymorphic: true #delete if fail
  def transactions
    transactions_sender + transactions_receiver
  end

  def business_transactions
    transactions.filter { |transaction| transaction.kind == 'business'}
  end

  def personal_transactions
    transactions.filter { |transaction| transaction.kind == 'personal'}
  end
end
