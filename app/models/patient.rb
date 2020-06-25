class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def index
        @patients = Patient.all
    end
    
    def show
        @patient = Patient.find(params[:id])
    end
end
