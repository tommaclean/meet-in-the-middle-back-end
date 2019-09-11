class UserMeetupFav < ApplicationRecord
  belongs_to :user
  belongs_to :user_meetup
  has_one :meetup, through: :user_meetup

  validates :user_meetup_id, uniqueness: true
end
