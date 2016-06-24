require 'rubygems'
require 'mechanize'

class Contact_agira
  def details
    agent = Mechanize.new
    page = agent.get('http://www.agiratech.com/contact-us/')
    search_form = page.form_with :class => "wpcf7-form wpl-track-me"
    search_form.field_with(:name => "name").value = "Arun Kumar G"
    search_form.field_with(:name => "email").value = "arunkumar@agiratech.com"
    search_form.field_with(:name => "phone").value = "8015918676"
    search_form.field_with(:name => "Subject").value = "job"
    search_form.field_with(:name => "message").value = "job description"
    button = search_form.button_with(:value => "SEND")
    search_results = agent.submit(search_form, button)
    puts search_results.body
  end
end

contact_agira_obj = Contact_agira.new
contact_agira_obj.details
