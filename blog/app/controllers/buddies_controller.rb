class BuddiesController < ApplicationController
    def index
        @buddies = Buddy.all
    end
    def show
        @buddy = Buddy.find(params[:id])
    end
    
    def new
        @buddy = Buddy.new
    end
    def edit
        @buddy = Buddy.find(params[:id])
    end
    
    def update
  @buddy = Buddy.find(params[:id])
     if @buddy.update(buddy_params)
    redirect_to @buddy
    else
    render 'edit'
     end
    end
    
    def destroy
  @buddy = Buddy.find(params[:id])
  @buddy.destroy
  redirect_to buddies_path
    end

    def create
        @buddy = Buddy.new(buddy_params)
        @buddy.email = current_user.email
       if @buddy.save
          
             redirect_to @buddy
        else
             render 'new'
       end
    end
end

private
    def buddy_params
        params.require(:buddy).permit(:fname,:lname,:gender,:class_name,:class_num,:section_num,:topic_1212,:availability,:time,:comment)
    end