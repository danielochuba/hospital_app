require 'rails_helper'

RSpec.describe "doctor_appointments/new", type: :view do
  before(:each) do
    assign(:doctor_appointment, DoctorAppointment.new(
      user: nil,
      patient: nil,
      illness: "MyString"
    ))
  end

  it "renders new doctor_appointment form" do
    render

    assert_select "form[action=?][method=?]", doctor_appointments_path, "post" do

      assert_select "input[name=?]", "doctor_appointment[user_id]"

      assert_select "input[name=?]", "doctor_appointment[patient_id]"

      assert_select "input[name=?]", "doctor_appointment[illness]"
    end
  end
end
