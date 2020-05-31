# frozen_string_literal: true

def sign_in_to_game
  visit('/')
  fill_in('player_name', with: 'Jacko')
  click_button('Play')
end
