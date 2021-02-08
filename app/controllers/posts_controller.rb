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
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

end
