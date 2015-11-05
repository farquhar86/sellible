class SaleMailer < ActionMailer::Base

layout 'sale_mailer'
default from: "Sellible <support@sellible.com>"

 def purchase_receipt (sale, price)
	 @sale = sale
	 @price = price
	
	 mail to: sale.email, subject: "Thanks for your order!"
 end

end