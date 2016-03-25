class Country < ActiveRecord::Base
	has_one :user_description
	has_many :cities
	has_many :regions
end
