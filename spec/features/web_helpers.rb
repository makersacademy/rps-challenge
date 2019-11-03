def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Amy'
  click_button 'Submit'
end

def rock_chosen
  click_button('Choose weapon')
  click_button('rock')
end
