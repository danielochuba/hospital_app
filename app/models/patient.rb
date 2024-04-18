class Patient < ApplicationRecord
  has_one :doctor_appointment
  
  validates :first_name, :last_name, :age, :address, presence: true
end
