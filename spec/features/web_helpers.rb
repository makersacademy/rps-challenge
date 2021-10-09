def submit_name_and_play(gesture_choice)
  visit '/'
  fill_in('player_name', with: 'Matt')
  click_button('Submit')

  choose(gesture_choice)
  click_button('Submit')
end
