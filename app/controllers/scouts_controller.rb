class ScoutsController < ApplicationController
  def index
    @scouts = Scout.all
  end

  def new
    @scout = Scout.new
  end

  def create
    @scout = Scout.new(params[:scout])
    if @scout.save
      redirect_to scouts_url, :notice => "Successfully created scout."
    else
      render :action => 'new'
    end
  end

  def destroy
    @scout = Scout.find(params[:id])
    @scout.destroy
    redirect_to scouts_url, :notice => "Successfully destroyed scout."
  end
end
