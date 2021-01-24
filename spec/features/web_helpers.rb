# frozen_string_literal: true

def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Anna'
  click_button('Create Player')
end
