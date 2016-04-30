class HelpStart

  ONE_PLAYER = { readonly: "readonly", player2: "Computer" }
  TWO_PLAYERS = { readonly: "", player2: "" }

  def self.player_mode(number_players)

    number_players == "one" ? ONE_PLAYER : TWO_PLAYERS
  end
end