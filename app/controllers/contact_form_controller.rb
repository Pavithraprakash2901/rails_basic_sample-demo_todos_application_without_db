# app/controllers/contact_form_controller.rb
class ContactFormController < ApplicationController
    def new
      @contact_form = ContactForm.new
    end
    
  puts "hello"
    
    def create
      @contact_form = ContactForm.new(contact_form_params)
      
      if @contact_form.save
        # Print the details to the console
        puts "Name: #{contact_form_params[:name]}"
        puts "Email: #{contact_form_params[:email]}"
        puts "Message: #{contact_form_params[:message]}"
        # redirect_to confirmation_path
      else 
        render :new
      end
    end
  
  private
    def contact_form_params
      params.require(:contact_form).permit(:name, :email, :message)
    end
  end
  