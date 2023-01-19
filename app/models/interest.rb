class Interest < ApplicationRecord
  has_and_belongs_to_many :users

  INTERESTS = %w[Adventure City Countryside Culture Food Hiking
                 History Nightlife Relaxation Shopping Sightseeing Sports]

  validates :name, presence: true, uniqueness: true,
                   inclusion: { in: INTERESTS, message: "%{value} is not a valid interest" }
  validates :description, presence: true
end
