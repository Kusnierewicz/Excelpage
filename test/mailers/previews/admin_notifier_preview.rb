# Preview all emails at http://localhost:3000/rails/mailers/admin_notifier
class AdminNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/admin_notifier/contact_form
  def contact_form
    AdminNotifier.contact_form
  end

end
