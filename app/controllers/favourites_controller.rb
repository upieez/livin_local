class FavouritesController < ApplicationController
    before_action :find_place

    before_action :find_favourite, only: [:destroy]

   def create
    #  @place.favourite.create(user_id: current_user.id)
    #  redirect_to place_path(@place)
     if already_favourited?
        flash[:alert] = "You can't favourite more than once"
      else
        @place.favourite.create(user_id: current_user.id)
      end
      redirect_to place_path(@place)
   end

   def destroy
    if !(already_favourited?)
      flash[:alert] = "Cannot unlike"
    else
      @favourite.destroy
    end
    redirect_to place_path(@place)
  end

   private
   def find_place
     @place = Place.find(params[:id])
   end

   def find_favourite
     @favourite = @place.favourite.find(params[:format])
   end

   def already_favourited?
    Favourite.where(user_id: current_user.id, place_id:
    params[:id]).exists?
  end
 end