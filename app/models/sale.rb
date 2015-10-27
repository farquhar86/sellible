class Sale < ActiveRecord::Base
	validates :terms_of_service, acceptance: true
after_create :email_purchaser

	private

	def email_purchaser
	   PurchaseMailer.purchase_receipt(self).deliver
	end

end
