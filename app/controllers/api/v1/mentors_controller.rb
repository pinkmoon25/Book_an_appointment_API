class Api::V1::MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
    render json: @mentors.to_json(include: %i[skills])
  end

  def create
    mentor = Mentor.create(
      name: params[:mentorName],
      bio: params[:mentorBio],
      image: params[:mentorImage]
    )
    if mentor
      render json: {
        status: 200,
        mentor: mentor.to_json(only: %i[name image bio])
      }
    else
      render json: {
        error: mentor.errors.full_messages
      }
    end
  end

  def destroy
    mentor = Mentor.find(params[:id])
    if mentor
      mentor.destroy
      render json: {
        status: 200,
        message: "successfully removed #{mentor.name}"
      }
    else
      render json: {
        error: mentor.errors.full_messages
      }
    end
  end
end
