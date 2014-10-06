class StaticPagesController < ApplicationController
  def home
    @songs = Song.all.order( 'title ASC' )

    @today_random_playlist = Playlist.where("created_at >= ?", Time.zone.now.beginning_of_day - 10000).first
    if @today_random_playlist
      @today_random_playlist_contents = @today_random_playlist.playlist_contents
    end

    @playlist = Playlist.new
  end
end
