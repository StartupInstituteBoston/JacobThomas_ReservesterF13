class Notifier < ActionMailer::Base
  default from: "admin@reservester.com"

  def send_reservation_email(owner, reservation)
    @owner = owner 
    @reservation = reservation 
    mail( :to => @owner.email, 
          :subject => 'New reservation' )
  end
end
