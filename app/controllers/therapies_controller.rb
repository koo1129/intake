class TherapiesController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
  end
  
end
