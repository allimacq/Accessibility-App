class ReviewsController < ApplicationController

    private

    def reviews_params
        params.require(:review).permit(:review, :park_id, :activity_id, :user_id, :accessible, :title, :rating)
    end
end