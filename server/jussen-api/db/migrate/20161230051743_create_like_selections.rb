class CreateLikeSelections < ActiveRecord::Migration[5.0]
  def change
    create_table :like_selections do |t|
      t.integer :user_id
      t.integer :selection_id

      t.timestamps
    end
  end
end
