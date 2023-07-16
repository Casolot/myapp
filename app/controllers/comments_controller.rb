class CommentsController < ApplicationController
    def create
        @post = Post.find(param[:post_id])
        @post.commmnts.create(comment_params)
        redirect_to post_path(@post)
    end
    private
    def comment_params
        params.require(:comment).permit(:body)
    end
end
