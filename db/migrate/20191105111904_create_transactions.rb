class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
    t.belongs_to :wallet, type: :uuid

      t.timestamps
    end
  end
end
