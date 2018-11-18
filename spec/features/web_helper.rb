def sign_in
  visit('/')
  fill_in :p_1, with: "Archer"
  click_button 'submit'
end

def weapon_set(one, two)
  sign_in
  @game = Game.instance
  @game.p_1.choice(one)
  @game.p_2.choice(two)
  visit('/result')
end
