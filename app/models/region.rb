class Region < ActiveRecord::Base
	has_one :user_description
	belongs_to :country
	has_many :cities
end
