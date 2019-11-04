class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :first_name
      t.string :last_name
      t.string :linked_in
      t.string :photo
      t.string :work_phone
      t.string :work_email
      t.string :occupation
      t.string :job_title
      t.string :company
      t.uuid
      t.references :user, foreign_key: true
      t.references :wallet, foreign_key: true

      t.timestamps
    end
  end
end
