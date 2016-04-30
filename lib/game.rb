class Game

  STANDARD = {rock: 1, paper: 2, scissors: 3}.freeze
  EXTENDED = {rock: 0, spock: 1, paper: 2, lizard: 3, scissors: 4}.freeze

  attr_reader :player_1, :player_2, :standard_mode

  def initialize(player_1, player_2, standard_mode)
  	@player_1 = player_1
  	@player_2 = player_2
    @standard_mode = standard_mode
  end

  def self.create(player_1, player_2, standard_mode)
  	@game = Game.new(player_1, player_2, standard_mode)
  end

  def self.instance
  	@game
  end

  def start
    result = standard_mode ? find_winner_standard : find_winner_extended
    puts result == 'Tie' ? result : "The winner is #{result.name}"
  end

  private

  def find_winner_standard
    return player_2 if STANDARD[player_1.choice] % 3 + 1 == STANDARD[player_2.choice]
    return player_1 if STANDARD[player_2.choice] % 3 + 1 == STANDARD[player_1.choice]
    'Tie'
  end

  def find_winner_extended
    difference = (EXTENDED[player_1.choice] - EXTENDED[player_2.choice]) % 5
    return 'Tie' if difference == 0
    return player_1 if difference == 1 || difference == 2
    player_2
  end
end
