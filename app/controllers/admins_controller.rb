class AdminsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :home ]

        def approve
            @places = Place.where(approval: false)
        end

        def create
            if current_user.admin?
                @place = Place.new(place_params)
                @place.user = current_user
                @place.approval = true
        
                uploaded_file = place_params[:img_url].path
                cloudnary_file = Cloudinary::Uploader.upload(uploaded_file)
        
                @place.img_url = cloudnary_file['public_id']
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
        end

        def destroy
            if current_user.admin?
                @place = Place.find(params[:id])
                @place.destroy
        
                redirect_to '/places/pending'
            end
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