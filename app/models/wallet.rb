class Wallet < ApplicationRecord
  has_many :transactions_sender, class_name: 'Transaction', foreign_key: 'sender_id'
  has_many :transactions_receiver, class_name: 'Transaction', foreign_key: 'receiver_id'
  belongs_to :user
  # belongs_to :walletable, polymorphic: true #delete if fail
  def transactions
    transactions_sender + transactions_receiver
  end

  def businesses_filter
    senders = transactions.filter { |transaction| transaction.sender.user.business }
    receivers = transactions.filter { |transaction| transaction.receiver.user.business }
    # hah = transactions.filter { |transaction| transaction.sender.user.business || transaction.receiver.user.business }
    [senders, receivers].flatten
  end

  def personals_filter
    transactions.filter { |transaction| transaction.sender.user.personal ||  transaction.receiver.user.personal }.map { |transaction| transaction.sender.user.personal ||  transaction.receiver.user.personal }
  end

end
