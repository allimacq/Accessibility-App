class ActivitiesController < ApplicationController

    def new
        @activity = Activity.new
    end

    private

    def activities_params
        params.require(:activity).permit(:name, :description, :rating, :accessible)
    end

end