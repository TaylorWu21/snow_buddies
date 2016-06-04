class Trip < ActiveRecord::Base
	belongs_to :user
	has_many :locations
	has_many :resorts, through: :locations
end