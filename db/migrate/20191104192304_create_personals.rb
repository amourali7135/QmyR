class CreatePersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :personals, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :first_name
      t.string :last_name
      t.string :nick_name
      t.string :email
      t.integer :phone
      t.string :occupation
      t.string :facebook
      t.string :instagram
      t.string :snapchat
      t.string :linked_in
      t.string :twitter
      t.string :pinterest
      t.integer :whatsapp
      t.string :skype
      t.string :line
      t.string :youtube
      t.string :website
      t.string :tumblr
      t.string :soundcloud
      t.string :vk
      t.string :wechat
      t.string :github
      t.string :tiktok
      t.string :vine
      t.references :user, type: :uuid
      t.timestamps
    end
  end
end
