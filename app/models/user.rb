class User < ApplicationRecord
  belongs_to :city
  has_many :ragots
  has_many :comments
  has_many :likes
end
