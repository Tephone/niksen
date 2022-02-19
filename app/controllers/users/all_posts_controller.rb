class Users::AllPostsController < Users::ApplicationController
  before_action :set_post, only: %i[show]

  def index
    @posts = Post.default_order
  end

  def show
  end

  private

  def set_post
    @post = current_user.posts.find(params[:id])
  end
end
