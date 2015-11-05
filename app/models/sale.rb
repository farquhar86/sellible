class Sale < ActiveRecord::Base
	validates :terms_of_service, acceptance: true
	# after_create :email_purchaser

end
