class ThoughtsController < ApplicationController
  def index
    @thoughts = Thought.all.order(:name)
  end
end