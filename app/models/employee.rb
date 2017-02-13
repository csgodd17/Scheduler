class Employee < ApplicationRecord
  has_many :teams
  has_many :projects, through: :teams

  def team(project_id)
    team_object = Team.where(project_id: project_id).where(employee_id: self.id)
    return team_object
  end
end
