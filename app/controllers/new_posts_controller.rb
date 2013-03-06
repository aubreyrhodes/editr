class NewPostsController < ApplicationController
  def show
    @new_post = NewPost.new
  end

  def create
    @new_post = NewPost.new(params[:new_post])
    if @new_post.save
      flash[:notice] = 'New Post Created'
      redirect_to root_path
    end
  end
end
