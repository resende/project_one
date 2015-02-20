class CommentsController < ApplicationController
 
before_action :authenticate_user!, only: [:new, :create, 
  :edit, :update, :destroy]
  authorize_resource

  def index
    @comments = Comment.all
  end

  def show
    @comments = Comment.find(params[:id])
    @comment = Comment.new 
  end

  def new
    @comment = Comment.new
  end

  def edit
     @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id 
      
    # if  @comment.save 
    #   redirect_to current_user_path
    # end 

     respond_to do |format|
      if @comment.save
        format.html { redirect_to comments_url, notice: 'Comment Submitted' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @track, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end 
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:feedback, :track_id, :user_id)
    end
end



