class TherapiesController < ApplicationController
  #before_action :set_client

  def index
    @clients = Client.all
  end

  def new
    @therapy = Therapy.new
    #@therapies = @client.therapies.includes(:user)
  end

  def create
    @therapy = Therapy.new(therapy_params)
  end

  private

  def therapy_params
    params.require(:therapy).permit(:therapy, :date).merge(user_id: current_user.id)
  end

  def set_client
    @client = Therapy.find(params[:client_id])
  end

end
