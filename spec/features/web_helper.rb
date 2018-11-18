def one_player_sign_in
  visit('/')
  click_button 'one_player'
  fill_in :p_1, with: "Rick"
  click_button 'submit'
end

def two_player_sign_in
  visit('/')
  click_button 'two_player'
  fill_in :p_1, with: "Rick"
  fill_in :p_2, with: "Morty"
  click_button 'submit'
end

def weapon_set(one, two)
  two_player_sign_in
  @game = Game.instance
  @game.p_1.choice(one)
  @game.p_2.choice(two)
  visit('/result')
end
