class PostsController < ApplicationController
  before_action :build_post, only: [:new, :create]
  before_action :set_post, only: [:edit, :update, :destroy]

  def index
    @title = "My Blog Dashboard"
    @posts = Post.all
  end

  def new
  end

  def create
    @post.title   = params[:post][:title]
    @post.content = params[:post][:content]
    # content it might be required!
    if @post.save
      redirect_to root_path
    else
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
    # convevtion over configuration
    @post.title   = params[:post][:title]
    @post.content = params[:post][:content]
    # content it might be required!
    if @post.save
      redirect_to root_path
    else
      redirect_to new_post_path
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

    def build_post
      @post = Post.new
    end

    def set_post
      @post = Post.find(params[:id])
    end
end