class ChangeAdministratorMailer < ApplicationMailer
  def change_administrator_mail(change_leader,team)
    @change_leader = change_leader
    @team = team
    mail to: @change_leader.email, subject: I18n.t('views.messages.change_leader')
  end
end
