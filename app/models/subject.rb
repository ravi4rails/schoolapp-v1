class Subject < ActiveRecord::Base
  has_many :course_subjects
  has_many :courses, :through => :course_subjects
  has_many :employee_subjects
  has_many :employeee, :through  => :employee_subjects
end
