class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index

  PER_PAGE = 15

  def index
    @posts = Post.all.order(created_at: :desc).page(params[:page]).per(PER_PAGE)
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @like = Like.new
    @comment = Comment.new
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    current_user.posts.create!(post_params)
    @posts = Post.order(created_at: :desc).page(params[:page]).per(PER_PAGE)
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
