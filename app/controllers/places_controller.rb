class PlacesController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :home ]
    protect_from_forgery :except => [:index]

    def home
        if user_signed_in?
            redirect_to '/places'
        else
            return
        end
    end

    def index
        if  params[:tag_id].present?
            # to still be able to display all tag names
            @tags = Tag.all

            # get tag_id chosen by user
            @tag_id = params[:tag_id]

            # get the places with the tag chosen by user
            # if there are places with the chosen tag, display these places
                # else,nothing to display
            @places = Tag.find_by(id: @tag_id).place
            puts "INSPECTING PLACES:" + @places.inspect

        else
            @places = Place.where(approval: true)
            @tags = Tag.all
            puts "HERE ARE THE TAGS:" + @tags.inspect
        end
    end

    def user
        # get the places posted by a specific user
        @user = User.find(params[:user_id])
        puts "USER:"+ @user.to_s
        puts "USER ID:"+ @user.id.to_s

        @places = Place.where user_id: @user.id
        puts @places.inspect

    end

    def show
        @place = Place.find(params[:id])
        # gets username of logged in user
        @username = current_user.username
        # gets user_id of user who created/posted a place
        @user_id = @place.user_id
        @creator = User.find( @user_id )
        @ratings = Rating.where(place_id: params[:id])
        @reviews = Review.where(place_id: params[:id])
        puts "THIS IS THE CURRENT USER:" + @username.inspect
        puts "THIS IS THE USER ID OF POST CREATOR:" + @user_id.to_s


    end

    def new
        @place = Place.new
        @rating = Rating.new
        @review = Review.new
        @tags = Tag.all
    end

    def edit
        byebug
        @place = Place.find(params[:id])

    end

    def create
        @place = Place.new(place_params)

        @place.user = current_user

        if place_params[:img_url]
            uploaded_file = place_params[:img_url].path

            cloudnary_file = Cloudinary::Uploader.upload(uploaded_file, :allowed_formats => ["png", "jpeg", "jpg"])

            @place.img_url = cloudnary_file['public_id']

        else

            @place.img_url = nil

        end

        @place.save

        @rating = Rating.new(value: params["place"]["rating"].to_i)

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

    def favourite
        @favourites = Favourite.where(user_id: current_user.id)
    end

    private
    def place_params
        params.require(:place).permit(:id, :name, :description, :img_url, :address, :approval, :tag_ids => [])
    end

    def review_params
        params.require(:place).permit(:review)
    end

end