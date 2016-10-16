def sign_in_and_play
  visit('/')
  fill_in :name, with: 'John Doe'
  click_button 'Play'
end
