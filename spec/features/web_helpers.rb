def sign_in
  visit('/')
  click_link('', :href => '/computer')
  fill_in :player_1_name, with: 'Thomas'
  click_button 'Submit'
end

def sign_in_2
  visit('/')
  click_link('', :href => '/human')
  fill_in :player_1_name, with: 'Thomas'
  fill_in :player_2_name, with: 'Zoe'
  click_button 'Submit'
end
