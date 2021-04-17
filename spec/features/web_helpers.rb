def enter_name_and_play
  visit '/'
  fill_in('player_name', with: 'muhammad')
  click_button "Let's play"
end

def play_and_chose_rock
  enter_name_and_play
  allow_any_instance_of(Computer).to receive(:rand).and_return(1)
  click_button('rock')
end
