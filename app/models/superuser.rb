class Superuser < ActiveRecord::Base
	has_secure_password

	validates :email, :password_digest, presence: true, confirmation: true
	validates_uniqueness_of :email
	validates :password, length: {minimum: 4}

	def self.confirm(params)
	    superuser = Superuser.find_by_email(params[:email])
	    superuser.try(:authenticate, params[:password])
  	end
end
