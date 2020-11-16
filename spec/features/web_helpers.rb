def sign_in
  visit ('/')
  fill_in :name, with: 'Rafa'
  click_button 'Start Game!'
end
