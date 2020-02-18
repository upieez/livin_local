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
    end
  
    def new
        @place = Place.new
    end
  
    def edit
    end
  
    def create
        @place = Place.new(place_params)

        @place.user = current_user

        @place.save

        redirect_to @place
    end
  
    def update
    end
  
    def destroy
    end

    private
    def place_params
        params.require(:place).permit(:name, :description, :img_url, :address, :rating)
    end

end