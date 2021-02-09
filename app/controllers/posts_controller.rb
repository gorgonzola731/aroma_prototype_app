class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    current_user.posts.create!(post_params)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end
  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :image)
    end

end
