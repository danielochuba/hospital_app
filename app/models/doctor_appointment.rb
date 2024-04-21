class DoctorAppointment < ApplicationRecord
  belongs_to :user
  belongs_to :patient

  validates :date, :illness, presence: true
end
