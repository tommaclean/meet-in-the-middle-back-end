class User < ApplicationRecord
  has_secure_password
  has_many :user_meetups
  has_many :meetups, through: :user_meetups
  has_many :user_meetup_favs, through: :user_meetups

  has_many :participants, foreign_key: :participant1_id, class_name: 'Participate'
  has_many :participants, foreign_key: :participant2_id, class_name: 'Participate'
  has_many :participants, through: :participants
end
