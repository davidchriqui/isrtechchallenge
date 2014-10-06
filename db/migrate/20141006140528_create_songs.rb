class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist

      t.timestamps
    end
    add_index :songs, :title
    add_index :songs, :artist

  end
end
