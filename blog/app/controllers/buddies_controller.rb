class BuddiesController < ApplicationController
    def new
    end
    
    def show
        @buddy = Buddy.find(params[:id])
    end
    
    def create
        @buddy = Buddy.new(buddy_params)
        @buddy.save
        redirect_to @buddy
    end
end

private
    def buddy_params
        params.require(:buddy).permit(:fname,:lname,:email,:gender,:class,:class_num,:section_num,:topic_1212,:availability,:time,:comment)
    end