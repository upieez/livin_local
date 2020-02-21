class PlacesController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :home ]

    def home
        if user_signed_in?
            redirect_to '/places'
        else
            return
        end
    end

    def index
        @places = Place.where(approval: true)
        # @places = Place.all
    end

    def show
        require 'uri-handler'
        @place = Place.find(params[:id])
        @ratings = Rating.where(place_id: params[:id])
        @reviews = Review.where(place_id: params[:id])
    end

    def new
        @place = Place.new
        @rating = Rating.new
        @review = Review.new
        @tags = Tag.all
    end

    def edit
        @place = Place.find(params[:id])
    end

    def create
        @place = Place.new(place_params)

        @place.user = current_user

        if place_params[:img_url]
            uploaded_file = place_params[:img_url].path

            cloudnary_file = Cloudinary::Uploader.upload(uploaded_file)

            @place.img_url = cloudnary_file['public_id']

        else

            @place.img_url = nil

        end 

        @place.save

        @rating = Rating.new(rating_params)

        @rating.user = current_user

        @rating.place = @place

        @rating.save

        if review_params[:review] == ""
            redirect_to @place
            return
        else

        @review = Review.new(review_params)

        @review.user = current_user

        @review.place = @place

        @review.save

        end

        redirect_to @place
    end


    def update
        @place = Place.find(params[:id])

        @place.update(place_params)
        redirect_to @place
    end

    def destroy
    end

    def creation
        @places = Place.where(user_id: current_user[:id])
    end

    private
    def place_params
        params.require(:place).permit(:id, :name, :description, :img_url, :address, :approval, :tag_ids => [])
    end

    def rating_params
        params.require(:place).permit(:value)
    end

    def review_params
        params.require(:place).permit(:review)
    end

end