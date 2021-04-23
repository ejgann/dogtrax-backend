class Api::V1::OwnersController < ApplicationController

    def index
        owners = Owner.all
        render json: owners
    end
    
    def show
        owner = Owner.find(params[:id])
        render json: owner
    end

    def create
        owner = Owner.new(owner_params)
        if owner.save
            render json: owner 
        else
            render error: {error: "Unable to create owner."}
        end
    end

    def update
        owner = Owner.find(params[:id])
        if owner
            owner.update(owner_params)
        else
            render error: {error: "Unable to update owner."}
        end
    end

    def destroy
        owner = Owner.find(params[:id])
        owner.destroy
    end

    private

    def owner_params
        require.params(:owner).permit(:name, :email, :phone)
    end

end
