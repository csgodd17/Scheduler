class Employee < ApplicationRecord
  has_many :teams
  has_many :projects, through: :teams
end
