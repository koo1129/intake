class ContentsController < ApplicationController

    def new
        @content = Contents.new
    end

    def create
        Content.create(comment_params)
        redirect_to "/clients/#{content.client.id}"
    end

    private
  def comment_params
    params.require(:comment).permit(:therapy, :date).merge(user_id: current_user.id, client_id: params[:client_id])
  end

 
end
