class HelpView

  ONE_PLAYER = { readonly: "readonly", player2: "Computer" }
  TWO_PLAYERS = { readonly: "", player2: "" }
  GAME_MODE = {classic: 'style="display:none;"', spock: ''}

  def self.player_mode(players)

    players == "one" ? ONE_PLAYER : TWO_PLAYERS
  end

  def self.game_mode(mode)
    GAME_MODE[mode.to_sym]
  end
end