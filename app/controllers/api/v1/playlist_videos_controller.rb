class Api::V1::PlaylistVideosController < ApplicationController
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

    private

    def playlist_video_params
        params.require(:playlist_video).permit(:playlist_id, :video_id)
    end
end
