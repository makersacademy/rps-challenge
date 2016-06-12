def enter_rnd_name_go_to_single_player_game
  @random_name = %w(Andrea Mario Lucia Liz).sample
  visit('/')
  fill_in('player_1_name', with: @random_name)
  click_button('Play')
end

def enter_rnd_names_go_to_multi_player_game
  @random_name_1 = %w(Andrea Mario Lucia Liz).sample
  @random_name_2 = %w(Giorgio Antonella Grazia Nello).sample
  visit('/')
  fill_in('player_1_name', with: @random_name_1)
  fill_in('player_2_name', with: @random_name_2)
  click_button('Play')
end
