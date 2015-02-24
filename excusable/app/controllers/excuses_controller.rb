class ExcusesController < ApplicationController

  def index
    @excuses = Excuse.all
  end

  def new
    @excuse = Excuse.new
  end

  def create
    Excuse.create({title: params[:excuse][:title], content: params[:excuse][:content], user_id: session[:user_id]})
    redirect_to "/excuses"
  end

  def show
    @excuse = Excuse.find(params[:id])
  end

  def edit
    @excuse = Excuse.find(params[:id])
  end

  def update
    @excuse = Excuse.find(params[:id])
    @excuse.update_attributes(title: params[:excuse][:title], content: params[:excuse][:content])
    redirect_to "/excuses"
  end

  def destroy
    excuse = Excuse.find(params[:id])
    excuse.comments.each { |comment| comment.destroy}
    excuse.votes.each { |vote| vote.destroy}
    excuse.destroy
  end

  def vote
    if request.xhr?

      Vote.create(excuse_id: params[:id], user_id: session[:user_id])
      votes = Vote.count
      votes.to_json
      render json: votes
    end
  end

end