class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  def appointment_count
    self.appointments.size 
  end
end
