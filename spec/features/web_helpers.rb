def name_and_play
  visit('/')
  fill_in :playerName, with: "Andy"
  click_button 'Submit'
end
