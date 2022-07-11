class PerformersController < ApplicationController
  def index
    @performers = Performer.order(created_at: :desc)
  end

  def new
    @performer = Performer.new
  end
end
