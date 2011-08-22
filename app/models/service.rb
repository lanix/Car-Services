class Service < ActiveRecord::Base

	validate :validates_km, :if => :something_in_db?
	validate :validates_date, :if => :something_in_db?
	validates_presence_of :km, :oil
	
	def validates_km
		validates_numericality_of :km, :greater_than => Service.last.km
	end
	
	def validates_date
		if self.date < Service.last.date
			errors.add(:date, "must be greater than last service (" + Service.last.date.to_s + ")")
		end
	end
	
	def something_in_db?
		Service.any?
	end 
end
