class Resort < ActiveRecord::Base
	has_many :locations
	has_many :trips, through: :locations
end
