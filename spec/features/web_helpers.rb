def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Katerina'
  click_button 'Start game'
end
