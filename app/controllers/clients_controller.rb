class ClientsController < ApplicationController
    
    def new
        @client = Client.new
        @client.user user= current_user
    end
  
    def create
        binding.pry
    end
  
end
  