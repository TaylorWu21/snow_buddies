class Trip < ActiveRecord::Base
	belongs_to :user
	has_many :locations
	has_many :resorts, through: :locations

	validates_presence_of :title, :location, :date

	def self.by_title
		order(:title)
	end

	def self.by_date
		order(:date)
	end

	def self.by_description
		order(:description)
	end
end
