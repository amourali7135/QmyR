class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :first_name
      t.string :last_name
      t.string :linked_in
      t.string :work_phone
      t.string :work_email
      t.string :occupation
      t.string :job_title
      t.string :company
      t.references :user, type: :uuid
      t.timestamps
    end
  end
end
