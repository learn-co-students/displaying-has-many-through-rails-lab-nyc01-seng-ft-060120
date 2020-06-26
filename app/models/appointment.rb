class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  #before_action :date

  def date
    self.appointment_datetime.strftime("%B %d, %Y at %R")
  end

  def doctor_name
    self.doctor ? self.doctor.name : nil
  end

  def patient_name
    self.patient ? self.patient.name : nil
  end


end
