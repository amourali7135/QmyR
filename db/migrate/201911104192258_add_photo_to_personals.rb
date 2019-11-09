class AddPhotoToPersonals < ActiveRecord::Migration[5.2]
  def change
    add_column :personals, :photo, :string
  end
end
