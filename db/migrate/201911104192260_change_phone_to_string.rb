class ChangePhoneToString < ActiveRecord::Migration[5.2]
  def change
    change_column :businesses, :work_phone, :string
    change_column :personals, :phone, :string
    change_column :personals, :whatsapp, :string
  end
end
