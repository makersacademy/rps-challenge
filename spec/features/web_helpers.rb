def submit_and_play
  visit '/'
  fill_in "player", with: "Dave"
  click_button 'Submit'
end
