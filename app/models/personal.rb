class Personal < ApplicationRecord
  belongs_to :user
  
  mount_uploader :photo, PhotoUploader
  
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :first_name, :last_name, :nick_name ],
  associated_against: {
  business: [ :first_name, :last_name ]
},
using: {
tsearch: { prefix: true }
}

end
