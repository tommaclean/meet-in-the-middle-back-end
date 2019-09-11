class UserMeetupFavsController < ApplicationController

  def index
    @usermeetupfavs = UserMeetupFav.all
    render json: @usermeetupfavs
  end

  def show
    @usermeetupfav = UserMeetupFav.find(params[:id])
    render json: @usermeetupfav
  end

  def create
    @user_meetup_fav = UserMeetupFav.create(user_meetup_fav_params)
    render json: @user_meetup_fav
  end

  def favs
    @favs = logged_in_user.user_meetup_favs.map { |fav| fav.meetup }
    render json: @favs
  end

  def delete
    @usermeetupfav = UserMeetupFav.find(params[:id])
    @usermeetupfav.destroy
  end

  private

  def user_meetup_fav_params
    params.permit(:user_id, :user_meetup_id)
  end

end
