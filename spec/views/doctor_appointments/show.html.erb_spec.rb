require 'rails_helper'

RSpec.describe "doctor_appointments/show", type: :view do
  before(:each) do
    assign(:doctor_appointment, DoctorAppointment.create!(
      user: nil,
      patient: nil,
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
