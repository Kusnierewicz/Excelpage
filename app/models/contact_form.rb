class ContactForm < ActiveRecord::Base
    
    validates :name, presence: true
    validates :email, presence: true, email: true
    #validates :phone, :phony_plausible => true
    validates :message, presence: true
    
    after_create :send_admin_notification

    def send_admin_notification
      AdminNotifier.contact_form(self).deliver_now
    end

end
