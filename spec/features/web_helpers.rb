def sign_in_and_play_computer
  visit '/'
  click_button 'Computer'
  fill_in('player_name', with: 'Marvin')
  click_button 'Submit'
end

def sign_in_and_play_human
  visit '/'
  click_button '2-player'
  fill_in('player_name_one', with: 'Marvin')
  fill_in('player_name_two', with: 'Ethel')
  click_button 'Submit'
end
