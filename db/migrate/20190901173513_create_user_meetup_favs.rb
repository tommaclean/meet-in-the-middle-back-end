class CreateUserMeetupFavs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_meetup_favs do |t|
      t.string :user
      t.string :UserMeetup

      t.timestamps
    end
  end
end
