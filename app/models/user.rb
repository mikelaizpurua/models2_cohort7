class User < ActiveRecord::Base
  belongs_to :code_school
  has_one :profile
  has_many :projects

  scope :active, -> { where(active: true, has_paid: true) }
  # def self.active
  #   where(active: true)
  # end

  scope :cohort, ->(cohort_num) { where(cohort: cohort_num) }
  # def self.cohort(cohort_num)
  #   where(cohort: cohort_num)
  # end

  scope :active_cohort, ->(cohort_num) { active.cohort(cohort_num) }
end

