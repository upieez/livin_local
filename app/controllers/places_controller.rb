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
        @places = Place.all
    end
  
    def show
        @place = Place.find(params[:id])
        @rating = Rating.where(place_id: params[:id]).take
    end
  
    def new
        @place = Place.new
        @rating = Rating.new
    end
  
    def edit
        @place = Place.find(params[:id])
    end
  
    def create
        @place = Place.new(place_params)

        @place.user = current_user

        @place.save

        puts "--------------" + rating_params.to_s

        if rating_params[:value] == ""
            redirect_to @place
            return
        else

        @rating = Rating.new(rating_params)

        @rating.user = current_user

        @rating.place = @place

        @rating.save

        end

        redirect_to @place
    end
  
    def update
    end
  
    def destroy
    end

    private
    def place_params
        params.require(:place).permit(:id, :name, :description, :img_url, :address)
    end

    def rating_params
        params.require(:place).permit(:value)
    end

end