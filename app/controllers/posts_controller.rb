class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.create(title: params[:title], image_url: params[:image_url], content: params[:content])
  end
end
