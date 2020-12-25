class BlogsController < ApplicationController
  def index 	
  	@blogs = Blog.paginate(page: params[:page], :per_page => 9, :total_entries =>9)
  end

  def show
		@blogs = Blog.paginate(page: params[:page], :per_page => 9)
  end
end
