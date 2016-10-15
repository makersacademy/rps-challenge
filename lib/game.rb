require_relative 'player'

class Game

  attr_reader :players, :choices, :bot

  def initialize(player)
    @players = [player]
    @choices = ["rock","paper","scissors"]
    @bot = Player.new("bot")
  end

  def first_player_name
    @players[0].name
  end

end
