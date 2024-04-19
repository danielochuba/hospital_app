class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :role, presence: true

  has_many :doctor_appointments

  def doctor?
    role == 'Doctor'
  end

  def receptionist?
    role == 'Receptionist'
  end
end
