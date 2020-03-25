class ClientsController < ApplicationController
    
    def new
        @client = Client.new
        @client.user user= current_user
    end
  
    def create
        @client = Client.new(client_params)
        if @client.save
          redirect_to root_path, notice: 'グループを作成しました'
        else
          render :new
        end
    end

    private
    def client_params
        params.require(:client).permit(:name, :sex, :job, :address, :from, :family, :character, :complaint, :history, :other, :intake, :phot, :email, :phone, user_ids: [])
    end
  
end
  