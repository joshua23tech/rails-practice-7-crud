class NbaplayersController < ApplicationController
    def index 
        @nbaplayers = Nbaplayer.all
    end

    def show 
        @nbaplayer = Nbaplayer.find(params[:id])
    end
end
