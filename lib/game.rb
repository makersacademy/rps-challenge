class Game

  STANDARD = {rock: 1, paper: 2, scissors: 3}.freeze
  EXTENDED = {rock: 1, paper: 2, scissors: 3, lizard: 4, spock: 5}.freeze

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, standard = true)
  	@player_1 = player_1
  	@player_2 = player_2
    @standard = standard
  end

  def self.create(player_1, player_2)
  	@game = Game.new(player_1, player_2)
  end

  def self.instance
  	@game
  end

  def start
    result = find_winner
    puts result == 'Tie' ? result : "The winner is #{result.name}"
  end

  private

    def find_winner
      if @standard
        if STANDARD[player_1.choice] % 3 + 1 == STANDARD[player_2.choice]
          player_2
        elsif STANDARD[player_2.choice] % 3 + 1 == STANDARD[player_1.choice]
          player_1
        else
          'Tie'
        end
      end     
    end
end
