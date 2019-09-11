class CreateUserMeetupFavs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_meetup_favs do |t|
      t.belongs_to :user_meetup
      t.belongs_to :user
      t.timestamps
    end
  end
end
