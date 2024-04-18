class Patient < ApplicationRecord
  validates :first_name, :last_name, :age, :address, presence: true
end
