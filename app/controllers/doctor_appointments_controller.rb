class DoctorAppointmentsController < ApplicationController
  before_action :set_doctor_appointment, only: %i[ show edit update destroy ]

  # GET /doctor_appointments or /doctor_appointments.json
  def index
    @doctor_appointments = DoctorAppointment.all
  end

  # GET /doctor_appointments/1 or /doctor_appointments/1.json
  def show
  end

  # GET /doctor_appointments/new
  def new
    @doctor_appointment = DoctorAppointment.new
  end

  # GET /doctor_appointments/1/edit
  def edit
  end

  # POST /doctor_appointments or /doctor_appointments.json
  def create
    @doctor_appointment = DoctorAppointment.new(doctor_appointment_params)

    respond_to do |format|
      if @doctor_appointment.save
        format.html { redirect_to doctor_appointment_url(@doctor_appointment), notice: "Doctor appointment was successfully created." }
        format.json { render :show, status: :created, location: @doctor_appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doctor_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_appointments/1 or /doctor_appointments/1.json
  def update
    respond_to do |format|
      if @doctor_appointment.update(doctor_appointment_params)
        format.html { redirect_to doctor_appointment_url(@doctor_appointment), notice: "Doctor appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @doctor_appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doctor_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_appointments/1 or /doctor_appointments/1.json
  def destroy
    @doctor_appointment.destroy

    respond_to do |format|
      format.html { redirect_to doctor_appointments_url, notice: "Doctor appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_appointment
      @doctor_appointment = DoctorAppointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_appointment_params
      params.require(:doctor_appointment).permit(:user_id, :patient_id, :date, :illness)
    end
end
