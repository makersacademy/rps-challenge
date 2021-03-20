def sign_in_and_play
  visit '/home'
  fill_in 'player_name', with: "Sneaky Racoon"
  click_button 'Submit'
end
