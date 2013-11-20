class Notifier < ActionMailer::Base
  default from: "admin@reservester.com"

  def send_reservation_email(owner)
    @owner = owner 
    mail( :to => @owner.email, 
          :subject => 'New reservation' )
  end
end
