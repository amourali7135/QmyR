class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|

      t.references :sender, type: :uuid
      t.references :receiver, type: :uuid

      t.timestamps
    end
  end
end
