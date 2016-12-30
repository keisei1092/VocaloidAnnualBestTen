class User < ApplicationRecord
  has_many :selections, dependent: :destroy
end
