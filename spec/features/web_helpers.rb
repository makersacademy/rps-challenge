def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: 'Lord Looney'
  fill_in :player_2_name, with: 'Count Catula'
  click_button('Submit')
end

def rock_scissors
  sign_in_and_play
  click_button('Rock')
  click_button('Scissors')
end

def rock_rock
  sign_in_and_play
  2.times { click_button('Rock') }
end
