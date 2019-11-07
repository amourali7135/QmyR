class Transaction < ApplicationRecord
  belongs_to :wallet, class_name: 'Wallet', foreign_key: 'sender_id'
  belongs_to :wallet, class_name: 'Wallet', foreign_key: 'receiver_id'
end
