class Game

  attr_reader :player_name, :player_choice

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  private

  def initialize(player)
    @player_name = player
    @player_choice = ""
    @rules = {
      "Rock" => "Scissors",
      "Paper" => "Rock",
      "Scissors" => "Paper"
    }
  end

end
