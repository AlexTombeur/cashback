class Corporation < ApplicationRecord
  has_many :users
  has_attachment :photo
end
