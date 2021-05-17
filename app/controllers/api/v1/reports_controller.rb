class Api::V1::ReportsController < ApplicationController
    before_action :set_dog

    def index
        @reports = Report.all
        render json: @reports
    end

    def show
        @report = Report.find(params[:id])
        render json: @report
    end

    def create
        @report = @dog.reports.new(report_params)

        @report.date = DateTime.now
        if @report.save 
            render json: @report 
        else
            render json: {error: "Unable to create report."}
        end
    end

    # def update
    #     report = Report.find(params[:id])
    #     if report
    #         report.update(report_params)
    #     else
    #         render error: {error: "Unable to update report."}
    #     end
    # end

    def destroy
        @report = Report.find(params[:id])
        @dog = Dog.find(@report.dog_id)
        @report.destroy
    end

    private

    def set_dog
        @dog = Dog.find(params[:dog_id])
    end

    def report_params
        params.require(:report).permit(:date, :pee, :poop, :comments, :dog_id)
    end

end
