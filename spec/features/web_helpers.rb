def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Chris"
  click_button "Submit"
end

def battle_commences
  player_1 = Player.new("Chris")
  player_2 = Player.new("Computer")
  @game = Game.new(player_1, player_2)
end
