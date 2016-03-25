class City < ActiveRecord::Base
	has_one :user_description
	belongs_to :country
	belongs_to :region
end
