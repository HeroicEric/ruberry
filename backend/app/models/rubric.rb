class Rubric < ActiveRecord::Base
  validates :name, presence: true
end
