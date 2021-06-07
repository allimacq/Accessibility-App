class ActivitiesController < ApplicationController

    def new
        @activity = Activity.new
    end

    private

    def parks_params
        params.require(:park).permit(:name, :state_id, :city_id, :user_id, :accessible?)
    end
    
end