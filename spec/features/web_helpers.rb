def register_to_play
  visit('/')
  fill_in :name, with: 'Maria'
  click_button 'Register'
end
