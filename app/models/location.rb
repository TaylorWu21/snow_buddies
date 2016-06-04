class Location < ActiveRecord::Base
	belongs_to :trip
	belongs_to :resort
end
