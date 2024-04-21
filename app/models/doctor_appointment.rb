class DoctorAppointment < ApplicationRecord
  belongs_to :user
  belongs_to :patient, dependent: :destroy

  validates :date, :illness, presence: true
end
