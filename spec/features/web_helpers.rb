def register_and_play
  visit('/')
  fill_in :marketeer, with: 'Ruan'
  click_button 'Submit'
end
