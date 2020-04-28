class Api::V1::PlaylistsController < ApplicationController
    def show
        playlist = Playlist.find(params[:id])
        render json: {playlist: PlaylistSerializer.new(playlist)}
    end

    def create
        playlist = Playlist.create(playlist_params)
        render json: {playlist: PlaylistSerializer.new(playlist)}
    end

    def destroy
        playlist = Playlist.find(params[:id])
        playlist.destroy
        render json: {message: "Playlist successfully deleted"} 
    end

    private

    def playlist_params
        params.require(:playlist).permit(:playlist_name)
    end
end
