class Wish < ActiveRecord::Base
  has_many :users, through: :users_wishes
end
