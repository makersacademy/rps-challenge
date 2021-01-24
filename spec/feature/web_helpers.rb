def player_1_name
  "Hugh"
end

def player_2_name
  "Computer"
end

def sign_in_and_play
  visit '/'
  fill_in('name', with: player_1_name)
  click_button('Start playing')
end
