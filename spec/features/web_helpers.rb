def vist_index_add_name(player_name)
  visit '/'
  fill_in('player_name_1', with: player_name)
  click_button 'Play game'
end
