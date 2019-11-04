class Business < ApplicationRecord
  belongs_to :user
  belongs_to :wallet
  uuidable
end
