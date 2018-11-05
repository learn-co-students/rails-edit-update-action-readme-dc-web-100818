class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end

  # add edit and update methods here
  def edit
  end

  def update
  @post.update(post_params)
  redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
