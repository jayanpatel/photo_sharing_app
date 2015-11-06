class PostsController < ApplicationController
	before_action :set_user
	def index
		@posts = Post.all
		@user = User.all
	end

	def show
		# @posts = current_user.posts
		@posts = User.find(params[:id]).posts
	end

	def new
		@post = Post.new
	end

	def create
    caption = post_params[:caption]
    photo = post_params[:photo]
    @post = Post.create(:caption => caption, :photo => photo, :user_id => @user.id)
    redirect_to '/'
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  	redirect_to posts_path
  end

  

  private


	def set_user
		@user = User.find_by(id: current_user.id)
	end

	def post_params
    params.require(:post).permit(:caption, :photo)
  end

end
