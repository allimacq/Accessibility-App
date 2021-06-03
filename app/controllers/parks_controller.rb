class ParksController < ApplicationController

    def new
        @park = Park.new
    end

    def create
        @park = Park.create(parks_params)
        if @park.save
            redirect_to park_path(@park)
        else
            render :new
        end
    end


    private

    def parks_params
        params.require(:park).permit(:name, :state_id, :city_id)
    end


end