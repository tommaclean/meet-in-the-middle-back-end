class AddParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :followings do |t|
      t.belongs_to :user
      t.belongs_to :participant_user
    end
  end
end
