class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.belongs_to :user, type: :uuid
      t.string :first_name
      t.string :last_name
      t.string :linked_in
      t.string :photo
      t.string :work_phone
      t.string :work_email
      t.string :occupation
      t.string :job_title
      t.string :company
      t.timestamps
    end
  end
end
