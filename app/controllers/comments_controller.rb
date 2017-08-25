class CommentsController < ApplicationController
    before_action :authenticate_user!, only: [:create]
    
    def create
        comment = Comment.new
        comment.post_id = params[:post_id]
        comment.user_id = current_user.id
        comment.content = params[:content]
        comment.save
        redirect_to post_path(comment.post)
    end
    
 
    
    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        redirect_back fallback_location: root_path
    end
    
    private
    
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
    
end
