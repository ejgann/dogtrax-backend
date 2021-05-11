class Api::V1::WalkersController < ApplicationController

    def index
        walkers = Walker.all
        render json: walkers
    end

    def show
        walker = Walker.find(params[:id])
        render json: walker
    end
    
    private

    def walker_params
        params.require(:walker).permit(:name, :email)
    end

end
