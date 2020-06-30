class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def date
       a = self.appointment_datetime.to_s(:long)
       a.first(-6) + " at " + a.last(5)
    end
end
