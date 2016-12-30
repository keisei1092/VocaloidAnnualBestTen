class AddColumnToSelection < ActiveRecord::Migration[5.0]
  def change
    add_column :selections, :play_count, :integer
  end
end
