class Game
  attr_reader :player1, :player2, :choice1, :choice2, :results

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def record(choice1)
    @choice1 = choice1
  end

  def record_second_player(choice2)
    @choice2 = choice2
  end

  def get_results(results)
    @results = results
  end

end
