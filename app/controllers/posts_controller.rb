class PostsController < ApplicationController

  def index
    @title = "My Blog Dashboard"
    @posts = Post.all
  end

  def new
    @name = "Raysa"
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end