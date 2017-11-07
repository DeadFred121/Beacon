class PurchaseMailer < ApplicationMailer
  default :from => 'payments@beconpg.com'
  def send_transactional_email(to_email)
    @to_email = to_email
    mail( :to => @to_email, :subject => 'Payment Confirmation')
  end
end
