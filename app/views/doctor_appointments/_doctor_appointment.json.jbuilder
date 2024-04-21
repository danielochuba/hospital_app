json.extract! doctor_appointment, :id, :user_id, :patient_id, :date, :illness, :created_at, :updated_at
json.url doctor_appointment_url(doctor_appointment, format: :json)
