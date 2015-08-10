class PostsController < ApplicationController

	def index
		@posts = Post.all
		render :index
	end

	def new
		@post = Post.new
		render :new
	end

	# def new
	#     # @user = User.find(params[:user_id])
	#     # @post = @user.posts.new

	#     @post = Post.new
	#     render :new
	#  end

	# def create
 #        Post.create(cr_params)
 #        redirect_to root_path
 # 	end

	def create

		Post.create(post_params)
		redirect_to posts_path

  #   	@user = User.find(params[:user_id])
  #   	@post = @user.posts.new(post_params)
  #   	if @post.save
  #     		redirect_to @user
  #   	else
  #     		redirect_to :back
		# end
    end

	def show
		# @user = User.find(params[:user_id])
        post_id = params[:id]
        @post = Post.find(post_id)
        render :show
    end

    def edit
    	# @user = User.find(params[:user_id])
    	post_id = params[:id]
    	@post = Posts.find(post_id)
    	render :edit
    end

    def update
    	# @user = User.find(params[:user_id])
    	post_id = params[:id]
    	@post = Posts.find(post_id)
    	@post.update_attributes(posts_params)
    	redirect_to posts_path

    end

    def destroy
    	# @user = User.find(params[:user_id])
    	post_id = params[:id]
    	@post = Post.find(post_id)
    	@post.destroy
    	redirect_to index_path
    end

	private
		def post_params
			params.require(:post).permit(:title, :content)
			
		end


end
