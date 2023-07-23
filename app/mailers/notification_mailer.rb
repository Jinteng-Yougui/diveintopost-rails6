class NotificationMailer < ApplicationMailer
  def notice_mail(agenda)
    @agenda = agenda
    
    mail to: @users.title, subject: I18n.t('views.messages.delete_agenda_notice')
  end
end
