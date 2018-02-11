class Game

  attr_reader :player_1, :player_2

  OUTCOMES = {
    rock: [:scissors, :lizard],
    paper: [:rock, :spock],
    scissors: [:paper, :lizard],
    spock: [:scissors, :rock],
    lizard: [:paper, :spock]
  }

  def self.create(player_1, player_2 = Computer.new)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def outcome
    if @player_1.move == @player_2.move
      @result = :draw
    elsif OUTCOMES[@player_1.move].include?(@player_2.move)
      @result = :win
    else
      @result = :lose
    end
  end

end
