require 'spec_helper.rb'
def enter_name
  visit('/')
  fill_in :"name", with: "Gary"
  click_button 'Submit'
end