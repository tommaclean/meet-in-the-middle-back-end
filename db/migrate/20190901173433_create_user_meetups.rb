class CreateUserMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :user_meetups do |t|
      t.string :user
      t.string :participant1
      t.string :participant2

      t.timestamps
    end
  end
end
