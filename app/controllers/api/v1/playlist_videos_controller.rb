class Api::V1::PlaylistVideosController < ApplicationController

    def index
        playlist_videos = PlaylistVideo.all
        render json: playlist_videos
    end

    def create
        playlist_video = PlaylistVideo.create(playlist_video_params)
        render json: {playlist_video: PlaylistVideoSerializer.new(playlist_video)}
    end

    def update
        playlist_video = PlaylistVideo.find(params[:id])
        playlist_video.update(playlist_video_params)
        if playlist_video.valid? 
            render json: { playlist_video: PlaylistVideoSerializer.new(playlist_video) }
        else
            render json: { error: 'failed to update playlist video' }, status: :not_acceptable
        end
    end

    def destroy
        playlist_video = PlaylistVideo.find(params[:id])
        playlist_video.destroy
        render json: {message: ""}
    end

    def deleterecord
        video_playlist = PlaylistVideo.all.find{|p_v| p_v.video_id == params[:video_id].to_i && p_v.playlist_id == params[:playlist_id].to_i}
        video_playlist.destroy
        render json: {message: "Playlist_video deleted"}
    end

    private

    def playlist_video_params
        params.require(:playlist_video).permit(:playlist_id, :video_id)
    end
end
