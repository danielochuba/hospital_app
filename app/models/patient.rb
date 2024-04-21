class Patient < ApplicationRecord
  has_many :doctor_appointments

  validates :first_name, :last_name, :age, :address, presence: true
end
