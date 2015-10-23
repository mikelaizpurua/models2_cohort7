class CodeSchool < ActiveRecord::Base
  has_many :students, class_name: 'User'
  has_many :users
  has_many :projects, through: :students
end
