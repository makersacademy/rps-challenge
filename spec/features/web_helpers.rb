def submit_name_and_play(gesture_choice)
  visit '/'
  fill_in('player_name', with: 'Matt')
  click_button('Submit')

  choose(gesture_choice)
  click_button('Submit')
end

def mock_computer_with(gesture)
  allow_any_instance_of(Computer).to receive(:random_gesture).and_return(gesture)
end
