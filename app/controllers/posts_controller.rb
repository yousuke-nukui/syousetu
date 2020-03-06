class PostsController < ApplicationController
  before_action :authenticate_user

  def index
     @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = @post.user
  end

  def new
    @post = Post.new
  end

  def create
    @post=Post.new(
      content:params[:content],
      user_id:@current_user.id
    )
    @post.save
    redirect_to("/posts/index")
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.save
    redirect_to("/posts/index")
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end

end
