def sign_in_and_play
  visit '/'
  fill_in 'player', with: "Cristhian"
  click_button 'Start'
end
