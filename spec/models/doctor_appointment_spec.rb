require 'rails_helper'

RSpec.describe DoctorAppointment, type: :model do
  describe 'Validate Doctor Appointment creation' do
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:illness) }
  end
end
