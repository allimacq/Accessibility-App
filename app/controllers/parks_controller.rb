class ParksController < ApplicationController

    def new
        @park = Park.new
        @state = cookies[:state_id]
    end

    def create
        @park = Park.create(parks_params)
        if @park.save
            redirect_to park_path(@park)
        else
            render :new
        end
    end

    def show
        @park = Park.find_by(params[:id])
    end



    private

    def parks_params
        params.require(:park).permit(:name, :state_id, :city_id, :user_id)
    end


end