require 'rails_helper'

RSpec.describe "doctor_appointments/edit", type: :view do
  let(:doctor_appointment) {
    DoctorAppointment.create!(
      user: nil,
      patient: nil,
      illness: "MyString"
    )
  }

  before(:each) do
    assign(:doctor_appointment, doctor_appointment)
  end

  it "renders the edit doctor_appointment form" do
    render

    assert_select "form[action=?][method=?]", doctor_appointment_path(doctor_appointment), "post" do

      assert_select "input[name=?]", "doctor_appointment[user_id]"

      assert_select "input[name=?]", "doctor_appointment[patient_id]"

      assert_select "input[name=?]", "doctor_appointment[illness]"
    end
  end
end
