require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe 'Validate User creation' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:address) }
  end
end
