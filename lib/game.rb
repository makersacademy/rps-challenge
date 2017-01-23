class Game
  attr_reader :winner, :p1_name, :p1_choice, :p2_name, :p2_choice

  OUTCOMES = { Rock: { defeats: %w(Scissors Lizard) },
               Paper: { defeats: %w(Rock Spock) },
               Scissors: { defeats: %w(Paper Lizard) },
               Lizard: { defeats: %w(Paper Spock) },
               Spock: { defeats: %w(Scissors Rock) } }.freeze

  def self.create(p1, p2, player_class=Player)
    player1 = player_class.new(p1.first, p1.last)
    player2 = player_class.new(p2.first, p2.last)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(p1, p2)
    @p1_name = p1.name
    @p1_choice = p1.choice
    @p2_name = p2.name
    @p2_choice = p2.choice
    @winner = p1.choice.downcase
  end

  def battle
    return :draw if p1_choice == p2_choice
    return :"player-1-wins" if OUTCOMES[p1_choice.to_sym][:defeats].include?(p2_choice)
    :"player-2-wins"
  end
end
