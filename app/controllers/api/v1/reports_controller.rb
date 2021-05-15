class Api::V1::ReportsController < ApplicationController

    def index
        reports = Report.all
        render json: reports
    end

    def show
        report = Report.find(params[:id])
        render json: report
    end

    def create
        report = Report.new(report_params)
        if report.save 
            render json: report 
        else
            render error: {error: "Unable to create report."}
            binding.pry
        end
    end

    def update
        report = Report.find(params[:id])
        if report
            report.update(report_params)
        else
            render error: {error: "Unable to update report."}
        end
    end

    def destroy
        report = Report.find(params[:id])
        report.destroy
    end

    private

    def report_params
        params.require(:report).permit(:date, :pee, :poop, :comments, :dog_id)
    end

end
