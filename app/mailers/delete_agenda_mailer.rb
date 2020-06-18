class DeleteAgendaMailer < ApplicationMailer
  def delete_agenda_mail(agenda)
    @agenda = agenda
    mail_add = agenda.team.members.pluck(:email)
    mail to: mail_add , subject: I18n.t('views.messages.delete_agenda')
  end
end
