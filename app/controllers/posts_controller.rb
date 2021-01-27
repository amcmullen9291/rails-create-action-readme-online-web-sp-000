class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    binding.pry
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create 
    @post = Post.create(params[:post])
    redirect_to :'/posts'
  end
  
end
