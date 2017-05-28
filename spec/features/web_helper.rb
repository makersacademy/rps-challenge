def sign_in_and_play
  visit '/'
  fill_in('player_name', with: "Digby")
  click_button 'Submit'
end
