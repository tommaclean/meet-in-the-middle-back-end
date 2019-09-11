class UserMeetupSerializer < ActiveModel::Serializer
  attributes :meetup, :user_id, :participant1_id, :participant2_id
end
