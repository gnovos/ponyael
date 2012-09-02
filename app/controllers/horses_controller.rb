class HorsesController < ApplicationController
  def index
    @horses = Horse.all
  end

  def show
    @horse = Horse.find(params[:id])
  end

  def new
    @horse = Horse.new
  end

  def create
    @horse = Horse.new(params[:horse])
    if @horse.save
      redirect_to @horse, :notice => "Successfully created horse."
    else
      render :action => 'new'
    end
  end

  def edit
    @horse = Horse.find(params[:id])
  end

  def update
    @horse = Horse.find(params[:id])
    if @horse.update_attributes(params[:horse])
      redirect_to @horse, :notice  => "Successfully updated horse."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @horse = Horse.find(params[:id])
    @horse.destroy
    redirect_to horses_url, :notice => "Successfully destroyed horse."
  end
end
