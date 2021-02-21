require_relative 'player'
class Game
  attr_reader :player1, :player2

  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  def initialize(player1 = Player.new('pug'),player2 = Player.new('pom'))
    @player1 = player1
    @player2 = player2
  end

  def beats?
    RULES[@player1.move.to_sym].include?(@player2.move.to_sym) ? "#{@player1.name} won with #{@player1.move}" : "#{@player2.name} won with #{@player2.move}"
  end

end
