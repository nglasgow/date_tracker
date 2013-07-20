class TrackersController < ApplicationController
  def index

  end

  def new
    @tracker = Tracker.new
  end

  def create
    @tracker = Tracker.new(params[:tracker])
    if @tracker.save
      flash[:notice] = "Tracker has been created."
      redirect_to @tracker
    else
      # nothing, yet
    end
  end

  def show
    @tracker = Tracker.find(params[:id])
  end
end
