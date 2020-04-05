class PostsController < ApplicationController
  before_action :authenticate_user, {only: [:new, :show, :create, :edit, :update, :destroy, :overwrite]}

  def index
     @posts = Post.all.order(created_at: :desc)
     @posts = Post.all.page(params[:page]).per(5)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = @post.user
    @likes_count = Like.where(post_id: @post.id).count
  end

  def new
    @post = Post.new
  end

  def create
    @post=Post.new(
      title:params[:title],
      category:params[:category],
      content:params[:content],
      user_id:@current_user.id
    )
    if @post.save
      flash[:notice] = "投稿しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end

  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.category = paarams[:category]
    @post.content = params[:content]

    if @post.save
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end

  def overwrite
    @post = Post.find_by(id:params[:id])
  end


  def love
    @post = Post.where(category:'恋愛')
  end
  def society
    @post = Post.where(category:'社会・現代')
  end
  def mystery
    @post = Post.where(category:'ミステリー')
  end
  def fantasy
    @post = Post.where(category:'ファンタジー')
  end
  def novel
    @post = Post.where(category:'文芸')
  end
  def history
    @post = Post.where(category:'歴史・時代')
  end
  def gosip
    @post = Post.where(category:'ゴシップ')
  end
  def others
    @post = Post.where(category:'その他')
  end

end
