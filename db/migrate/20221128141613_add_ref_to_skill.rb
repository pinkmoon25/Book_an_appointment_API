class AddRefToSkill < ActiveRecord::Migration[7.0]
  def change
    add_reference :skills, :mentor, null: false, foreign_key: true
  end
end
