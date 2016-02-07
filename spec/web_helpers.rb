def sign_in_and_play
  visit('/')
  fill_in :player_1_first_name, with: 'Dave'
  fill_in :player_1_surname, with: 'Mittens'
  fill_in :player_1_email, with: 'Mittens@hotmail.com'
  click_button 'Submit'
end

def play_again
visit('/select1')
click_button'Play again!'
end
