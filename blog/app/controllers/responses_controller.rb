class ResponsesController < ApplicationController
    def create
        @buddy = Buddy.find(params[:buddy_id])
        @response = @buddy.responses.create(response_params)
        redirect_to response_path(@buddy)
    end
    
    private
        def response_params
            params.require(:response).permit(:commenter, :body)
        end

end
