def enter_rnd_name_go_to_game
  @random_name = %w(Andrea Mario Lucia Liz).sample
  visit('/')
  fill_in('player_1_name', with: @random_name)
  click_button('Play')
end
