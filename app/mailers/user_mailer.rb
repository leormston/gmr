class UserMailer < ApplicationMailer
  default from: 'gcsemathsresources.co.uk@gmail.com'
  layout 'mailer'
  def contact_form(email, name, message)
  @name = name
  @email = email
  @message = message
    mail(from: email,
         to: 'l.e.ormston@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end
