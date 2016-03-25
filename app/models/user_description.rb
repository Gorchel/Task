class UserDescription < ActiveRecord::Base
	belongs_to :user
	#country registration
	belongs_to :country
	belongs_to :region
	belongs_to :city
end
