class ParksController < ApplicationController
    helper_method :params

    def new
        @park = Park.new
        @state = cookies[:state_id]
    end

    def create
        #raise params.inspect
        @park = Park.create(parks_params)
        if @park.save
            redirect_to park_path(@park)
        else
            @state = cookies[:state_id]
            render :new
        end
    end

    def show
        #need to refactor everywhere there's a "@park_reviews" potentially
        @park = Park.find_by_id(params[:id])
        if !params[:reviews].blank?
            if params[:reviews] == "Accessible"
                @park_reviews = @park.reviews.where(accessible: true)
                if @park_reviews.empty?
                    redirect_to :park_path, notice: "No Accessible Reviews Found"
                end
            else
                @park_reviews = @park.reviews.where(accessible: false)
                if @park_reviews.empty?
                    flash.now[:alert] = "Could not find any reviews matching your search criteria"
                end
            end
        else
            @park_reviews = @park.reviews
        end
    end



    private

    def parks_params
        params.require(:park).permit(:name, :state_id, :city_id, :user_id, :accessible, :reviews)
    end


end