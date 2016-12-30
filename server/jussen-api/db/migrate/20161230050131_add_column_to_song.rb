class AddColumnToSong < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :title, :string
    add_column :songs, :original_url, :string
    add_column :songs, :thumbnail_url, :string
    add_column :songs, :short_url, :string
    add_column :songs, :long_url, :string
  end
end
