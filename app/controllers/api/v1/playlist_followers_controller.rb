class Api::V1::PlaylistFollowersController < ApplicationController
    def create
        playlist_follower = PlaylistFollower.create(playlist_follower_params)
        render json: {playlist_follower: PlaylistFollowerSerializer.new(playlist_follower)}
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
