class Project < ApplicationRecord
    has_many :student_projects, dependent: :destroy
    has_many :students, through: :student_projects
  
    validates :name, presence: true, uniqueness: true
  end
  