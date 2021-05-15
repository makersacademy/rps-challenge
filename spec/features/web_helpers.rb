# frozen_string_literal: true

def sign_in_and_play
  visit('/')
  fill_in('player_name', with: 'Elvis')
  click_button('Submit')
end
