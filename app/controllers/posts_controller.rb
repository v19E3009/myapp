class PostsController < ApplicationController
    
    def index
        @posts = Post.all.order(created_at: 'desc')
        render 'posts/index'
    end
end

def show
    @post = Post.find(params[:id])
end