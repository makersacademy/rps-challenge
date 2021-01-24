def player_name
  "Hugh"
end

def sign_in_and_play
  visit '/'
  fill_in('name', with: player_name)
  click_button('Start playing')
end
