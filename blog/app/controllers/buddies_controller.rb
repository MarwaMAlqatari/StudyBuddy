class BuddiesController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:buddy].inspect
    end
end
