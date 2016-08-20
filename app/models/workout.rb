class Workout < ApplicationRecord
  belongs_to :user
  has_many :exercises
  
  validates :date, presence: true
end
