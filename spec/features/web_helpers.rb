# frozen_string_literal: true

def sign_in
  visit '/'
  fill_in :name, with: 'Ursie'
  click_button 'Submit'
end
