class Trip < ApplicationRecord
  has_and_belongs_to_many :users
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }
  validates :location, presence: true, length: { minimum: 3, maximum: 50 }
  validates :budget, presence: true, numericality: { greater_than: 0 }

  validate :end_date_after_start_date

  validates :start_date, presence: true, date: { after_or_equal_to: Date.today }
  validates :end_date, presence: true

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
