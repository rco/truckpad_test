class Driver < ActiveRecord::Base

	validates :name, presence: true
	validates :cpf, presence: true, length: {minimum: 11}
	validates :truck_type, presence: true
	validates :longitude, presence: true
	validates :latitude, presence: true
end