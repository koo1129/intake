class TherapiesController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @therapy = Therapy.new
  end

end
