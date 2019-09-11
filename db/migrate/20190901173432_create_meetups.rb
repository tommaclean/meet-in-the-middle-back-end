class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :name
      t.string :vicinity
      t.bigint :user_id
      t.timestamps
    end
  end
end
