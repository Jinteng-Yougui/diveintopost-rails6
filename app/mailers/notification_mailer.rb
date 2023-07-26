class NotificationMailer < ApplicationMailer
  def notice_mail(agenda)
    @agenda = agenda
    @user = Team.find(@agenda.team_id).users
    mail to: @user.pluck(:email), subject: I18n.t('views.messages.delete_agenda_notice')
  end
end
