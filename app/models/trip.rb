class Trip < ActiveRecord::Base
	belongs_to :user
	has_many :locations
	has_many :resorts, through: :locations

	validates_presence_of :title, :location, :date
end
