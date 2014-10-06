class AddPositionToPlaylistContent < ActiveRecord::Migration
  def change
    add_column :playlist_contents, :position, :integer
  end
end
