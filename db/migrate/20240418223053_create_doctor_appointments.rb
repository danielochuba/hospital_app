class CreateDoctorAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.date :date
      t.string :illness

      t.timestamps
    end
  end
end
