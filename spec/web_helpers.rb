def sign_in_and_play_alone
  visit('/')
  fill_in :player_1_name, with: 'Jon'
  find('input[type=checkbox]').set(true)
  click_button('Start a new game')
end

def sign_in_and_play_in_two
  visit('/')
  fill_in :player_1_name, with: 'Jon'
  fill_in :player_2_name, with: 'Giamir'
  click_button('Start a new game')
end
