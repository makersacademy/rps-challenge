def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Chris"
  click_button "Submit"
end

def battle_commences
  player_1 = Player.new("Chris")
  cpu_player = Player.new("Computer")
  @game = Game.new(player_1, cpu_player)
  player_1.chooses(:rock)
  cpu_player.random_choice
end
