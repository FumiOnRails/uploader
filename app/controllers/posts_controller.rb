class PostsController < ApplicationController
  
  def index
    @posts = Post.all
    @post = Post.new
  end
  
  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:notice] = "投稿に成功しました"
    else
      flash[:alert] = "投稿に失敗しました"
    end
    redirect_to root_url
  end
  
  def destroy
    Post.find(params[:id]).destroy
    flash[:notice] = "削除に成功しました"
    redirect_to root_url
  end
  
  private
    
    def post_params
      params.require(:post).permit(:content,{files:[]})
    end
end
