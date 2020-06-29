class Api::V1::PlaylistFollowersController < ApplicationController

    def index
        playlist_followers = PlaylistFollower.select{|p_f| p_f.user_id == current_user.id}
        user_followed_playlists = playlist_followers.map{|p_f| Playlist.find(p_f.playlist_id) }
        render json: user_followed_playlists
    end

    def create
        new_playlist_follower = { playlist_id: playlist_follower_params[:playlist_id], user_id: current_user.id }
        playlist_follower = PlaylistFollower.create(new_playlist_follower)
        playlist = Playlist.all.find{|p| p.id == playlist_follower.playlist_id}
        render json: {playlist: PlaylistSerializer.new(playlist)}
    end

    def update
        playlist_follower = PlaylistFollower.find(params[:id])
        playlist_follower.update(playlist_follower_params)
        if playlist_follower.valid? 
            render json: { playlist_follower: PlaylistFollowerSerializer.new(playlist_follower) }
        else
            render json: { error: 'failed to update playlist_follower' }, status: :not_acceptable
        end
    end

    def destroy
        playlist_follower = PlaylistFollower.find(params[:id])
        playlist_follower.destroy
        render json: {message: "PlaylistFollower successfully deleted"}
    end

    private

    def playlist_follower_params
        params.require(:playlist_follower).permit(:playlist_id, :user_id)
    end
end
