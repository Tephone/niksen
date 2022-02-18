class Users::PostsController < Users::ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @post = current_user.posts
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to users_posts_path, notice: t('controllers.created')
    else
      flash.now[:alert] = t('controllers.failed_create')
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to users_posts_path, notice: t('controllers.updated')
    else
      flash.now[:alert] = t('controllers.failed_update')
      render :edit
    end
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit %i[title content url]
  end

  def set_post
    @post = current_user.posts.find(params[:id])
  end
end
