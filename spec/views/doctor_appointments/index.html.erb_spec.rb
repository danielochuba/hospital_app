require 'rails_helper'

RSpec.describe "doctor_appointments/index", type: :view do
  before(:each) do
    assign(:doctor_appointments, [
      DoctorAppointment.create!(
        user: nil,
        patient: nil,
        illness: "Illness"
      ),
      DoctorAppointment.create!(
        user: nil,
        patient: nil,
        illness: "Illness"
      )
    ])
  end

  it "renders a list of doctor_appointments" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Illness".to_s), count: 2
  end
end
