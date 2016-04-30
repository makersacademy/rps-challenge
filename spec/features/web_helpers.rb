def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Sity'
  click_button 'Push me'
end
