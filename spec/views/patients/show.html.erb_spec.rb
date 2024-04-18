require 'rails_helper'

RSpec.describe 'patients/show', type: :view do
  before(:each) do
    assign(:patient, Patient.create!(
                       first_name: 'First Name',
                       last_name: 'Last Name',
                       age: 'Age',
                       address: 'Address'
                     ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Age/)
    expect(rendered).to match(/Address/)
  end
end
