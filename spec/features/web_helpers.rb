def enter_name_and_play
  visit '/'
  fill_in 'player-name', with: 'Sam'
  click_on 'PLAY'
end
