class TherapiesController < ApplicationController
  def index
    @clients = Client.all
  end
end
