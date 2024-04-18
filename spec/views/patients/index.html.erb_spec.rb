require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        first_name: "First Name",
        last_name: "Last Name",
        age: "Age",
        address: "Address"
      ),
      Patient.create!(
        first_name: "First Name",
        last_name: "Last Name",
        age: "Age",
        address: "Address"
      )
    ])
  end

  it "renders a list of patients" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Age".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
  end
end
