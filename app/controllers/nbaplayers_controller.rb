class NbaplayersController < ApplicationController
    def index 
        @nbaplayers = Nbaplayer.all
    end
end
