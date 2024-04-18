require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  let(:patient) {
    Patient.create!(
      first_name: "MyString",
      last_name: "MyString",
      age: "MyString",
      address: "MyString"
    )
  }

  before(:each) do
    assign(:patient, patient)
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(patient), "post" do

      assert_select "input[name=?]", "patient[first_name]"

      assert_select "input[name=?]", "patient[last_name]"

      assert_select "input[name=?]", "patient[age]"

      assert_select "input[name=?]", "patient[address]"
    end
  end
end
