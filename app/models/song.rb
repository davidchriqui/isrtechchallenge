class Song < ActiveRecord::Base

  has_many :playlist_contents
  has_many :playlists, through: :playlist_contents

  scope :alphabetically, order("title ASC")
end
