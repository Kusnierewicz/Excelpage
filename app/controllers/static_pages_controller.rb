class StaticPagesController < ApplicationController
  before_action :setup_contact_form
  
  def home
  end
  
  def submit_form
    @contact_form.attributes = contact_form_params
    
    if @contact_form.save
      flash[:success] = "Wiadomość wysłana pomyślnie!"
      redirect_to action: :home
      
    else
      flash[:danger] = "Coś poszło nie tak, sprawdź wpisane dane kontaktowe!"
      render :home
    end

  end

  private
  def setup_contact_form
    @contact_form = ContactForm.new
  end

  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :phone, :message)
  end
end