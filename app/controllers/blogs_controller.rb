class BlogsController < ApplicationController


  def index 	
  	@blogs = Blog.paginate(page: params[:page], :per_page => 9, :total_entries =>9)
  end

  def show
	@blogs = Blog.paginate(page: params[:page], :per_page => 9)
  end


  def new
    @blog = current_user.blogs.build
  end


  def create 
    if current_user
      @blog = current_user.blogs.build(blog_params)     
      @blog.save
      redirect_to root_url
    else  
      flash[:alert] = "Будь ласка, увійдіть щоб мати можливість додавати свої пости"
      redirect_to root_url
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    if @blog.present?
    @blog.destroy
    redirect_to root_path
  end
  end

  private
  def blog_params
    params.require(:blog).permit(:content)
  end
  
end
