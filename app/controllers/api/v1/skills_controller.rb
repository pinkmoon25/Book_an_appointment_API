class Api::V1::SkillsController < ApplicationController
  def create
    skill = Skill.create(
      name: params[:skillName],
      icon: params[:skillIcon],
      mentor_id: params[:mentorId]
    )
    if skill.save
      render json: {
        status: 200,
        skill: skill.to_json(only: %i[name icon mentor_id])
      }
    else
      render json: {
        error: skill.errors.full_messages
      }
    end
  end
end
