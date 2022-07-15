class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail to:   ENV['TOMAIL'], subject: '【自動返信】' + @contact.subject_i18n
  end
end
