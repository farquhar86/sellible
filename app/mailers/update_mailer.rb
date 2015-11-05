class UpdateMailer < ActionMailer::Base

layout 'update_mailer'
default from: "Sellible <support@sellible.com>"

 def update_notifier (sale, price)
	 @sale = sale
	 @price = price
	 mail to: "farquharbradley@gmail.com", subject: "Someone Sold Their Phone!"
 end

end