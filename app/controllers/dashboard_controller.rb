class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.doctor?
      @patients_appointed = current_user.doctor_appointments
      @patients = Patient.all
      @patients_count_by_day = @patients.group_by_day(:created_at).count
      render 'doctor_dashboard'
    elsif current_user.receptionist?
      @patients = Patient.all
      @patient = Patient.new
      render 'receptionist_dashboard'
    end

    Rails.logger.debug "Rendering dashboard for #{current_user.role}" # Debug output
  end
end
