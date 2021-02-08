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
    Post.create!(title: post_params[:title], content: post_params[:content], user_id: current_user.id)
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
