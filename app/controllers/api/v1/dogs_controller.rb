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
        if dog
            dog.update(dog_params)
        else
            render error: {error: "Unable to update dog."}
        end
    end

    def destroy
        dog = Dog.find(params[:id])
        dog.destroy
    end

    private

    def dog_params
        require.params(:dog).permit(:name, :age, :breed, :notes, :owner_id)
    end

end
