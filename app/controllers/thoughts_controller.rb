class ThoughtsController < ApplicationController
  def index
    @thoughts = Thought.all.order(:name)
  end

  def show
    @thought = Thought.find(params[:id])
    @steps = @thought.steps
  end
end