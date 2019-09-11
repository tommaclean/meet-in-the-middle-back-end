class CreateUserMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :user_meetups do |t|
      t.references :user
      t.references :participant1
      t.references :participant2
      t.references :meetup
      t.timestamps
    end
  end
end
