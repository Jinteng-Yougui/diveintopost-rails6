class OwnerMailer < ApplicationMailer
  def owner_mail(team)
    @team = team
    @user = User.find(@team.owner_id)
    mail to: @user.email, subject: I18n.t('views.messages.change_owner_notice')
  end
end