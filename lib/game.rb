class Game
  attr_reader :players, :winner

  OUTCOMES = { rock: { defeats: %w(Scissors Lizard) },
               paper: { defeats: %w(Rock Spock) },
               scissors: { defeats: %w(Paper Lizard) },
               lizard: { defeats: %w(Paper Spock) },
               spock: { defeats: %w(Scissors Rock) } }.freeze

  def self.create(player_1_name, player_1_choice, player_2_name, player_2_choice, player_class=Player)
    @game = Game.new(player_class.new(player_1_name, player_1_choice), player_class.new(player_2_name, player_2_choice))
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @players = { player_1: {name: player_1.name, choice: player_1.choice},
                 player_2: {name: player_2.name, choice: player_2.choice} }
    @winner = @players[:player_1][:choice].downcase
  end

  def battle
    p1 = @players[:player_1]
    p2 = @players[:player_2]
    if p1[:choice] == p2[:choice]
      "#{p1[:name]}'s #{p1[:choice]} matches #{p2[:name]}'s #{p2[:choice]} - draw!"
    elsif OUTCOMES[p1[:choice].downcase.to_sym][:defeats].include?(p2[:choice])
      "#{p1[:name]}'s #{p1[:choice]} beats #{p2[:name]}'s #{p2[:choice]} - #{p1[:name]} wins!"
    else
      @winner = p2[:choice].downcase
      "#{p2[:name]}'s #{p2[:choice]} beats #{p1[:name]}'s #{p1[:choice]} - #{p2[:name]} wins!"
    end
  end
end
