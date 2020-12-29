class BlogsController < ApplicationController

  def index 	
  	@blogs = Blog.paginate(page: params[:page], :per_page => 9, :total_entries =>9)
  end

  def create
    user = User.new(user_params)
    user.save!
    blog = user.blogs.build(blog_params)
    blog.save!
  end

  def blog_params 
  	params.require(:blog).permit(:content)
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def show
	@blogs = Blog.paginate(page: params[:page], :per_page => 9)
  end
end
