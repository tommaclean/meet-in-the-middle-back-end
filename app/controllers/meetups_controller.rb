class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
    render json: @meetups
  end

  def show
    @meetup = Meetup.find(params[:id])
    render json: @meetup
  end

  def create
    @meetup = Meetup.create(meetup_params)
    merged_meetup_params = user_meetup_params.merge(:meetup_id => @meetup.id)
    UserMeetup.create(merged_meetup_params)
    render json: @meetup
  end

  private

  def meetup_params
    params.permit(:name, :vicinity, :user_id)
  end

  def user_meetup_params
    params.permit(:meetup_id, :user_id, :participant1_id, :participant2_id)
  end
end
