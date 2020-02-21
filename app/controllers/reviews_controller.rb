class ReviewsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :home ]

    def new 
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.user = current_user
        @review.place_id = params[:id]
        
        respond_to do |format|

            if @review.save
                format.html { redirect_to '/places/' + params[:id].to_s }
                format.js 
                format.json { render :place, status: :created, location: @review }
            else
                format.html { redirect_to '/places'}
            end
        end
    end

    private

    def review_params
        params.require(:place).permit(:review)
    end
end