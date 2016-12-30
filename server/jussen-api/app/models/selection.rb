class Selection < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :likeselections
  belongs_to :user
end
