class Service < ActiveRecord::Base
	@last_service = Service.last
	if @last_service != nil
		validates_numericality_of :km, :greater_than => @last_service.km
		validate :validates_date
	end
	validates_presence_of :km, :oil
	
	
	def validates_date
		if self.date < Service.last.date
			errors.add(:date, "must be greater than last service (" + Service.last.date.to_s + ")")
		end
	end
end
