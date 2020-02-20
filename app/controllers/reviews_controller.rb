class ReviewsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :home ]

    def new 
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.user = current_user
        @review.place_id = params[:id]
        @review.save
        redirect_to '/places/' + params[:id].to_s
    end

    private

    def review_params
        params.require(:place).permit(:review)
    end
end