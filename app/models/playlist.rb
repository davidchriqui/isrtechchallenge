class Playlist < ActiveRecord::Base

  has_many :playlist_contents

  has_many :songs, through: :playlist_contents

  validates :title, uniqueness: true
  default_scope -> {order('created_at DESC')}

end
