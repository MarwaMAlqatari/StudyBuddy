class BuddiesController < ApplicationController
    def show
        @buddy = Buddy.find(params[:id])
    end
    
    def new
        
    end
    
    def create
        @buddy = Buddy.new(buddy_params)
        
       if @buddy.save
          
             redirect_to @buddy
        else
             render 'new'
       end
    end
end

private
    def buddy_params
        params.require(:buddy).permit(:fname,:lname,:email,:gender,:class_name,:class_num,:section_num,:topic_1212,:availability,:time,:comm)
    end