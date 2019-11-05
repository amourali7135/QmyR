class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.string :geolocation_swap_info
      t.string :date_met
      t.string :own_notes
      # t.references :walletable, polymorphic: true

      t.timestamps
    end
  end
end
