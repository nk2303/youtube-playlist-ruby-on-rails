class Api::V1::CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments, status: :ok
    end

    def show
        comment = Comment.find(params[:id])
        render json: {comment: CommentSerializer.new(comment)}
    end

    def create
        comment = Comment.create(comment_params)
        render json: {comment: CommentSerializer.new(comment)}
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {message: "Comment successfully deleted"} 
    end

    def commentsFromVideo
        comments = Comment.all.select{ |c| c.youtube_video_id == params[:youtube_video_id]}
        render json: comments, status: :ok
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :user_id, :youtube_video_id)
    end
end
