class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :location
      t.string :date

      t.timestamps
    end
  end
end
