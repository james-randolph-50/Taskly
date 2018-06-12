class ListsController < ApplicationController

    def index
    end

    def new
        @list = List.new
    end

    def create
        @list = List.find(params[:id])
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
        @list.delete
        redirect_to "Where?"
    end

    private

    def list_params
    end

    def find_list
    end
    
end
