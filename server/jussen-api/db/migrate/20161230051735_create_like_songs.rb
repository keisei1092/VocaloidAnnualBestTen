class CreateLikeSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :like_songs do |t|
      t.interger :user_id
      t.integer :song_id

      t.timestamps
    end
  end
end
