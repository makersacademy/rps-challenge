class Game

  attr_reader :player, :player_move, :hal_move, :outcome

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_choice(player_choice)
    @player_move = player_choice
  end

  def hal_choice
    @hal_move = ["rock", "paper", "scissors"].sample
  end

  def outcome
    return "Draw" if @player_move == @hal_move
    return "You win!" if [
      ['rock', 'scissors'],
      ['scissors', 'paper'],
      ['paper', 'rock']
    ].include? [@player_move, @hal_move]
    "You lose!"
  end

end
