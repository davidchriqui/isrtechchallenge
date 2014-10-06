class CreatePlaylistContents < ActiveRecord::Migration
  def change
    create_table :playlist_contents do |t|
      t.integer :playlist_id
      t.integer :song_id

      t.timestamps
    end
    add_index :playlist_contents, :playlist_id
    add_index :playlist_contents, :song_id
  end
end
