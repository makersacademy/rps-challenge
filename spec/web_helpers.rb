def sign_in_and_play
  visit ('/')
  fill_in :player_name, with: 'Mr.Spock'
  click_button 'Enter the arena'
end