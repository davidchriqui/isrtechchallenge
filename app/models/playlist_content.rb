class PlaylistContent < ActiveRecord::Base
  belongs_to :song
  belongs_to :playlist

  default_scope -> {order('position ASC')}
end
