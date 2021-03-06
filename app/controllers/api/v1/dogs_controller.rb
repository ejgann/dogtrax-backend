class Api::V1::DogsController < ApplicationController

    def index
        dogs = Dog.all 
        render json: dogs
    end

    def show
        dog = Dog.find(params[:id])
        render json: dog
    end

    def create
        dog = Dog.new(dog_params)
        if dog.save
            render json: dog
        else
            render error: {error: "Unable to create dog."}
        end
    end

    def update
        dog = Dog.find(params[:id])
        dog.update(dog_params)
        dog.save
        render json: dog
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :age, :gender, :breed, :notes)
    end

end
