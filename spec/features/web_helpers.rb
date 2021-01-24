# frozen_string_literal: true

def solo_sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Alfred'
  click_button 'Play'
end

def duo_sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'David'
  fill_in :player_2_name, with: 'Edward'
  click_button 'Play'
end
