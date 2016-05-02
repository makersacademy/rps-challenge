def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Elia'
  click_button 'Start'
end
