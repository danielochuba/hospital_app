require 'rails_helper'

RSpec.describe "doctor_appointments/edit", type: :view do
  let(:user) { User.create!(email: 'doctor@example.com', password: 'password', role: 'doctor', first_name: 'John', last_name: 'Doe') }
  let(:patient) { Patient.create!(first_name: 'Jane', last_name: 'Doe', age: '25', address: 'UK') }

  let(:doctor_appointment) {
    DoctorAppointment.create!(
      user: user,
      patient: patient,
      date: Date.today,
      illness: "MyString"
    )
  }

  before(:each) do
    assign(:doctor_appointment, doctor_appointment)
  end

  it "renders the edit doctor_appointment form" do
    render

    assert_select "form[action=?][method=?]", doctor_appointment_path(doctor_appointment), "post" do
      assert_select "input[name=?][value=?]", "doctor_appointment[user_id]", doctor_appointment.user_id.to_s
      assert_select "input[name=?][value=?]", "doctor_appointment[patient_id]", doctor_appointment.patient_id.to_s
      assert_select "input[name=?][value=?]", "doctor_appointment[illness]", doctor_appointment.illness
    end
  end
end
