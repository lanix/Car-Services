class Service < ActiveRecord::Base
	@last_service = Service.last
	validates_numericality_of :Km, :greater_than => @last_service.Km
	validates_presence_of :Km, :Oil
end
