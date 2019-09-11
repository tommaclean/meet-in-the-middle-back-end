class Meetup < ApplicationRecord
  has_many :user_meetups
  has_many :users, through: :user_meetups
  has_many :user_meetup_favs, through: :user_meetups
end
