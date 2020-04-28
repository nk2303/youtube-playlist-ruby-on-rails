class Api::V1::CommentsController < ApplicationController
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

    private

    def comment_params
        params.require(:comment).permit(:content, :user_id, :video_id)
    end
end
