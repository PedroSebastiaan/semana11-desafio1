class PagesController < ApplicationController
  def index
    if params[:title].present?
      @posts = Post.where('title = ?', params[:title])
    else
      @posts = Post.all.order(created_at: :desc)
    end
  end
end


