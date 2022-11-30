class Api::V1::MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
    render json: @mentors.to_json(include: %i[skills])
  end
end
