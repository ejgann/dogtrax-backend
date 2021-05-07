class Api::V1::DogsController < ApplicationController

    def index
        dogs = Dog.all 
        render json: dogs
    end

    def new
        @dog = Dog.new 
        @dog.build_owner
    end

    def show
        dog = Dog.find(params[:id])
        render json: dog
    end

    def create
        @owner = Owner.find_or_create_by(name: owner_params[:name]) do |owner|
            owner.email = owner_params[:email]
            owner.phone = owner_params[:phone]
        end
        
        dog = Dog.new(dog_params)
        dog.owner_id = @owner.id
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
        require.params(:dog).permit(:name, :age, :breed, :notes, :owner_id, :owner_attributes => [:name, :email, :phone])
    end

end
