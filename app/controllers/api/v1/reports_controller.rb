class Api::V1::ReportsController < ApplicationController

    def index
    end

    def show
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

    def report_params
        require.params(:report).permit(:date, :pee, :poop, :comments, :dog_id, :walker_id)
    end

end
