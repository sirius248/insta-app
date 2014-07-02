class Api::PostsController < ApplicationController

  def index
    @posts = Post.order("RANDOM()").first(5)
  end

  def show
    @post = Post.find(params[:id])
  end

  def random_post
    @post = Post.order("RANDOM()").first
  end
end
