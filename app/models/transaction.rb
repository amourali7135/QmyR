class Transaction < ApplicationRecord
  # belongs_to :walletable, polymorphic: true, class_name: 'Wallet', foreign_key: 'sender_id' #delete if fail
  # belongs_to :walletable, polymorphic: true, class_name: 'Wallet', foreign_key: 'receiver_id' #delete if fail

  belongs_to :sender, class_name: 'Wallet'  #call belongs to whatever you want later for calling transaction
  belongs_to :receiver, class_name: 'Wallet'

end
