class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.belongs_to :user, type: :uuid
      t.string :geolocation_swap_info
      t.string :date_met
      t.string :own_notes


      t.timestamps
    end
  end
end
