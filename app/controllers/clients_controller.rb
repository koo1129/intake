class ClientsController < ApplicationController
    
    def new
        @client = Client.new
        @client.user user= current_user
    end
  
    def create
        @client = Client.new(client_params)
        if @client.save
          redirect_to root_path, notice: '登録が完了しました'
        else
          render :new
        end
    end

    def edit
      @client = Client.find(params[:id])
    end
  
    def update
      @client = Client.find(params[:id])
      if @client.update(client_params)
        redirect_to client_path(@client), notice: '編集が完了しました'
      else
        render :edit
      end
    end

    def show
      @client = Client.find(params[:id])
    end

    def destroy
      @client = Client.find(params[:id])
      if @client.destroy(client_params)
        redirect_to root_path, notice: '削除しました'
      else
        redirect_to root_path, notice: '削除できませんでした'
      end
    end

    private
    def client_params
        params.require(:client).permit(:name, :sex, :job, :address, :from, :family, :character, :complaint, :history, :other, :intake, :photo, :email, :phone).merge(user_id: current_user.id)
    end
  
end
  