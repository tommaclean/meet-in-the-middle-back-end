class UserMeetupsController < ApplicationController
  def index
    @usermeetups = UserMeetup.all
    render json: @usermeetups
  end

  def show
    @usermeetup = UserMeetup.find(params[:id])
    render json: @usermeetup
  end

  def create
    @usermeetup = UserMeetup.create(user_meetup_params)
    render json: @usermeetup
  end

  def past_meetups
    user_meetups = logged_in_user.user_meetups.map { |user_meetup| user_meetup }
    render json: user_meetups
  end

  private

  def user_meetup_params
    params.permit(:user_id, :participant1_id, :participant2_id, :meetup_id)
  end
end
