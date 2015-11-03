class AdminNotifier < ApplicationMailer
  default from: "admin@genericapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_notifier.contact_form.subject
  #
  def contact_form contact_form
    @contact_form = contact_form

    mail to: "excel.optymalizacja@gmail.com"
  end
end
