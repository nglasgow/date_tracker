class TrackersController < ApplicationController
  def index
    @tracker = Tracker.where(['date <= ?', Date.today]).order('date desc')
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
      flash[:alert] = "Tracker has not been created."
      render :action => "new"
    end
  end

  def show
    @tracker = Tracker.find(params[:id])
  end
end
