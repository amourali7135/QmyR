class Personal < ApplicationRecord
  belongs_to :user
  uuidable
end
