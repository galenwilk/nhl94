class ResultsController < ApplicationController

  def index

  	@results = Result.all
  	@teams = Team.all

  end


  def new
	  @result = Result.new
  end
  
  def create
    @result = Result.new params[:result]
    if @result.save
      redirect_to results_path
    else
      render :action => 'new'
    end  
  end

  def edit
    @result = Result.find params[:id]
  end

  def update
    @result = Result.find params[:id]
    if @result.update_attributes params[:result]
      redirect_to results_path
    else
      render :action => :edit
    end
  end

  def destroy
  	@result = Result.find params[:id]
    @result.destroy
    redirect_to results_path
  end

  def show
  	 @result = Result.find params[:id]
  end

  
end
