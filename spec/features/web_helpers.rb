def sign_in_play
  visit('/')
  fill_in('player', with: 'Spock')
  click_button('Submit')
end
