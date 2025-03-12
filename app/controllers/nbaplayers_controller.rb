class NbaplayersController < ApplicationController
    def index 
        @nbaplayers = Nbaplayer.all
    end

    def new 
        @nbaplayer = Nbaplayer.new
    end

    def create 
        @nbaplayer = Nbaplayer.new(nbaplayer_params)
        @nbaplayer.save

        redirect_to nbaplayer_path(@nbaplayer)
    end

    def show 
        @nbaplayer = Nbaplayer.find(params[:id])
    end

    def edit 
        @nbaplayer = Nbaplayer.find(params[:id])
    end

    def update 
        @nbaplayer = Nbaplayer.find(params[:id])
        @nbaplayer.update(nbaplayer_params)

        redirect_to nbaplayer_path(@nbaplayer)
    end

    def destroy 
        @nbaplayer = Nbaplayer.find(params[:id])
        @nbaplayer.destroy 

        redirect_to nbaplayers_path, status: :see_other
    end

    private 

    def nbaplayer_params
        params.require(:nbaplayer).permit(:name, :position, :team, :conference, :finals_appearances, :finals_won, :finals_lost, :finals_mvps, :finals_pts_avg)
    end
end
