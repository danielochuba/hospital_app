require 'rails_helper'

RSpec.describe "doctor_appointments/show", type: :view do
  let(:doctor) { User.create!(email: 'doctor@example.com', password: 'password', role: 'Doctor', first_name: 'John', last_name: 'Doe') }
  let(:patient) { Patient.create!(first_name: 'Jane', last_name: 'Doe', age: '25', address: 'UK') }

  before(:each) do
    assign(:doctor_appointment, DoctorAppointment.create!(
      user: doctor,
      patient: patient,
      date: Date.today,
      illness: "Illness"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Illness/)
  end
end
