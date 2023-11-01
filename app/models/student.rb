class Student < ApplicationRecord
    has_many :student_projects,dependent: :destroy
    has_many :projects,through: :student_projects
end
