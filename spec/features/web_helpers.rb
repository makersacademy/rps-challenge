require 'spec_helper'

def enter_name
  visit '/'
  fill_in :'name', with: 'Ollie'
  click_button 'Submit'
end