class Transaction < ApplicationRecord
    add_reference :wallet, :sender, index: true
    add_reference :wallet, :receiver, index: true

    add_foreign_key :wallet, :users, column: :sender_id
    add_foreign_key :wallet, :users, column: :receiver_id
end
