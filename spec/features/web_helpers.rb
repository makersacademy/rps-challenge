def sign_in
  visit('/')
  fill_in :name, with: 'Patrick'
  click_button 'submit'
end

def sign_in_2_players
  visit('/')
  fill_in :name, with: 'Patrick'
  fill_in :name2, with: 'John'
  click_button 'submit'
end
