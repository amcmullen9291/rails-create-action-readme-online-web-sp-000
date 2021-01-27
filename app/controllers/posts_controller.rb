class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create 
    @post = Post.create(params[:post])
    
    redirect_to :'post#index'
end
