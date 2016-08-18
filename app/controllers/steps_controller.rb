class StepsController < ApplicationController
  def show
    @thought = Thought.find(params[:thought_id])
    @step = Step.find(params[:id])
  end
end
