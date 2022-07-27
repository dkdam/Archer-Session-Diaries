class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.create blog_params
    @current_user.blogs << blog
    equipment = Equipment.find params[:blog][:equipment_id] 
    blog.save
    redirect_to blog
  end

  def edit
    @blog = Blog.find params[:id]
  end

  def update
    blog = Blog.find params[:id]
    blog.update blog_params
    blog.equipment = Equipment.find params[:blog][:equipment_id]
    blog.save
    redirect_to blog

  end

  def show
    @blog = Blog.find params[:id]
    # @equipment = Equipment.find params[:id]
    # @equipment = Equipment.find params[:blog][:equipment_id]
    # raise 'hell'
  end

  def destroy
    blog = Blog.find params[:id]
    blog.destroy
    redirect_to blogs_path
  end

  private
def blog_params
  params.require(:blog).permit(:title, :session, :equipment_id)
end

end
