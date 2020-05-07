class Api::V1::VideosController < ApplicationController

    def index
        @videos = Video.all 
        render json: @videos, status: :ok
    end

    def show
        video = Video.find(params[:id])
        render json: {video: VideoSerializer.new(video)}
    end

    def create
        video = Video.create(video_params)
        render json: {video: VideoSerializer.new(video)}
    end

    def destroy
        video = Video.find(params[:id])
        video.destroy
        render json: {message: "Video successfully deleted"} 
    end

    private

    def video_params
        params.require(:video).permit(:youtube_video_id)
    end

end
