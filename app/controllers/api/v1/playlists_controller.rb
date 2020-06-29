class Api::V1::PlaylistsController < ApplicationController

    def index
        playlists = current_user.playlists
        render json: playlists
    end

    def all_playlists
        # current_user_playlists_id = current_user.playlists.map{|p_obj| p_obj.id}
        # all_playlists = Playlist.all.select { |p| !current_user_playlists_id.include? p.id }
        all_playlists = Playlist.all
        render json: all_playlists, status: :ok
    end

    def show
        playlist = Playlist.find(params[:id])
        render json: {playlist: PlaylistSerializer.new(playlist)}
    end

    def create
        new_playlist_params = { playlist_name: playlist_params[:playlist_name], description: playlist_params[:description], user_id: user_id }
        playlist = Playlist.create(new_playlist_params)
        render json: {playlist: PlaylistSerializer.new(playlist)}
    end

    def destroy
        playlist = Playlist.find(params[:id])
        playlist.destroy
        render json: {message: "Playlist successfully deleted"} 
    end

    private

    def playlist_params
        params.require(:playlist).permit(:playlist_name, :description, :user_id)
    end
end
