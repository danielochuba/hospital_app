require 'rails_helper'

RSpec.describe "doctor_appointments/index", type: :view do
  let(:doctor) { User.create!(email: 'doctor@example.com', password: 'password', role: 'doctor', first_name: 'John', last_name: 'Doe') }
  let(:patient) { Patient.create!(first_name: 'Jane', last_name: 'Doe', age: '25', address: 'UK') }

  before(:each) do
    assign(:doctor_appointments, [
      DoctorAppointment.create!(
        user: doctor,
        patient: patient,
        date: Date.today,
        illness: 'Illness 1'
      ),
      DoctorAppointment.create!(
        user: doctor,
        patient: patient,
        date: Date.today,
        illness: 'Illness 2'
      )
    ])
  end

  it "renders a list of doctor_appointments" do
    render
    expect(rendered).to have_text("Illness 1")
    expect(rendered).to have_text("Illness 2")
  end
end
