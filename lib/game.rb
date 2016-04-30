class Game

  attr_reader :player1, :player2

  def initialize(player1:, player2:)
  	@player1 = player1
  	@player2 = player2
  end

  def self.create(player1, player2)
  	@game = Game.new(player1:player1, player2:player2)
  end

  def self.instance
  	@game
  end

  def result(p1, p2)
     p2 = p2_choice if p2.nil?
     rps(p1, p2)
  end

  private

  def random
    Kernel.rand(0..4)
  end

  def p2_choice
    if random == 0
      'scissors'
    elsif random == 1
      'paper'
    elsif random == 2
      'rock'
    elsif random == 3
      'lizard'
    else
      'spock'
    end
  end

  def rps(p1, p2)
    rps_hash = {}
    rps_hash['scissors'] = ['paper', 'lizard']
    rps_hash['paper'] = ['rock', 'spock']
    rps_hash['rock'] = ['scissors', 'lizard']
    rps_hash['spock'] = ['scissors', 'rock']
    rps_hash['lizard'] = ['paper', 'spock']

    if p1 == p2
      "Draw!"
    elsif rps_hash[p1].include? p2
      "#{player1.name} won! #{p1} beats #{p2}"
    else
      "#{player2.name} won! #{p2} beats #{p1}"
    end
  end
end
