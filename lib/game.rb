require './lib/settings'

class Game

  attr_reader :player1, :player2, :gametype, :settings

  def self.create(player1, player2, gametype, gamevariant = "classic")
    @game = Game.new(player1, player2, gametype, gamevariant)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2, gametype, gamevariant = "classic")
    @settings = Settings.new(gamevariant)
    @player1 = player1
    @player2 = player2
    @gametype = gametype
    @gamevariant = gamevariant
  end

  def random
    @settings.random_weapon
  end

  def update_choice(choice, player)
    if player.playertype == "computer"
      choice = random
    else
      choice = choice
    end
    player.update_choice(choice)
  end

  def win_logic(round1 = @player1.choice, round2 = @player2.choice)
    if round1 == round2
      "draw"
		elsif @settings.weapon_hash[round1].include?(round2)
    @player1
		else
    @player2
    end
  end

end
