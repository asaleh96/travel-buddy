class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_and_belongs_to_many :interests
  has_and_belongs_to_many :trips

  GENDER_OPTIONS = ["Male", "Female", "Non-binary", "Prefer not to say"]

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: { case_sensitive: false },
                       format: { with: /\A[a-zA-Z0-9]+\z/, message: "only letters and numbers allowed" }
  validates :gender, presence: true, inclusion: { in: GENDER_OPTIONS }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
