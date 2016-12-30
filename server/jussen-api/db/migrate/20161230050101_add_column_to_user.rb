class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :screen_name, :string
    add_column :users, :avatar_url, :string
  end
end
