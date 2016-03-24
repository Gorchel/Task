class User < ActiveRecord::Base
  before_create :assign_default_role

  #protected :assign_default_role

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

    def assign_default_role
	    self.add_role "admin"
	end
end
