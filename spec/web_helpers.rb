def sign_in_and_play_two
  visit '/'
  click_button('Human')
  fill_in('player_one_name', with: 'Dave')
  fill_in('player_two_name', with: 'Mike')
  click_button('Submit')
end

def sign_in_and_play
  visit '/'
  click_button('Computer')
  fill_in('player_name', with: 'Dave')
  click_button('Submit')
end

def full_set_up
  visit '/'
  click_button('Human')
  fill_in('player_one_name', with: 'Dave')
  fill_in('player_two_name', with: 'Mike')
  click_button('Submit')
  click_button('Proceed')
  click_button('rock')
  click_button('scissors')
end


