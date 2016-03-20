class Game
  attr_reader :player1, :player2

  RULES = { rock: [:scissors, :lizard],
            paper: [:rock, :spock],
            scissors: [:paper, :lizard],
            lizard: [:paper, :spock],
            spock: [:rock, :scissors] }

  def self.create(player1:, player2:)
    self.weapons
    @instance = self.new(player1: player1, player2: player2)
  end

  def self.current_game
    @instance
  end

  def self.weapons
    RULES.collect { |weapon, beats| weapon }
  end

  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
  end

  def winner
    return @player1 if @player1.winner?(@player2.weapon)
    return @player2 if @player2.winner?(@player1.weapon)
  end
end
