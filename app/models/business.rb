class Business < ApplicationRecord
  belongs_to :user
  
  mount_uploader :photo, PhotoUploader
  
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :first_name, :last_name ],
#   associated_against: {
#   personal: [ :first_name, :last_name]
# }, lmfao
using: {
tsearch: { prefix: true }
}

  def transaction_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end

end
