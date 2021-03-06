class User < ActiveRecord::Base

	rolify
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable,
	     :confirmable

	devise :omniauthable, :omniauth_providers => [:facebook]

  has_one :user_description
  has_and_belongs_to_many :skills
end

