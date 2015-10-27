class PurchaseMailer < ActionMailer::Base
layout 'purchase_mailer'

 default from: "Sellible <support@sellible.com>"

 def purchase_receipt purchase
 @purchase = purchase

 mail to: purchase.email, subject: "Ship us your phone"

  end

end