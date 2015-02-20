class TracksController < ApplicationController
 
before_action :authenticate_user!, only: [:new, :create, 
  :edit, :update, :destroy]

  authorize_resource

  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
    @comment = Comment.new 
  end

  def new
    @track = Track.new
  end

  def edit
     @track = Track.find(params[:id])
  end

  def create
    @track = Track.new(track_params)
    @track.user_id = current_user.id 
    if  @track.save 
      redirect_to track_path(@track)
    end 
  end


  def update
      @track = Track.find(params[:id])
    respond_to do |format|
     end 
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    respond_to do |format|
      format.html { redirect_to tracks_url, notice: 'Track was deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_track
      @track = Track.find(params[:id])
    end

    def track_params
      params.require(:track).permit(:title, :length, :song, :user_id)
    end
end
