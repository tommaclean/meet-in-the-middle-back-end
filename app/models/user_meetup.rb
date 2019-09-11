class UserMeetup < ApplicationRecord
  belongs_to :user
  belongs_to :meetup
  has_many :user_meetup_favs
end
