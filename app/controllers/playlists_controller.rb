class PlaylistsController < ApplicationController
  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
      @random_song_list = randomize_playlist(Song.all)
      @position = 1
      @random_song_list.each do |song|
        @playlist_content = PlaylistContent.new
        @playlist_content.playlist_id = @playlist.id
        @playlist_content.song_id = song.id
        @playlist_content.position = @position
        @playlist_content.save
        @position = @position + 1
      end
      flash[:success] = "Your daily random playlist has been successfully generated"
      redirect_to root_url
    else
      flash[:error] = "You already have generated today's random playlist"
      redirect_to root_url
    end
  end

  def randomize_playlist(songs)
    songs.shuffle
  end

  private
  def playlist_params
    params.require(:playlist).permit(:title, :playlist_content_id)
  end
end
