class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :title

      t.timestamps
    end
    add_index :playlists, :title
  end
end
