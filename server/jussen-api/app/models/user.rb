class User < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :likesongs
  has_many :likeselections
end
