require 'rails_helper'

RSpec.describe DoctorAppointmentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/doctor_appointments').to route_to('doctor_appointments#index')
    end

    it 'routes to #new' do
      expect(get: '/doctor_appointments/new').to route_to('doctor_appointments#new')
    end

    it 'routes to #show' do
      expect(get: '/doctor_appointments/1').to route_to('doctor_appointments#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/doctor_appointments/1/edit').to route_to('doctor_appointments#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/doctor_appointments').to route_to('doctor_appointments#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/doctor_appointments/1').to route_to('doctor_appointments#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/doctor_appointments/1').to route_to('doctor_appointments#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/doctor_appointments/1').to route_to('doctor_appointments#destroy', id: '1')
    end
  end
end
