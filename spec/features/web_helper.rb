def enter_player_name_and_click_play
  names = ['Alex', 'Susanna', 'Jim', 'Bob']
  @player_name = names.sample
  visit ('/')
  fill_in('player_name', with: @player_name)
  click_button('Play')
end
