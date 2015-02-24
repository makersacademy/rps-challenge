class Game

  attr_accessor :results, :choice, :player1, :player2

  def initialize
    @results = { :Rock     => [:Scissors, :Lizard],
                 :Paper    => [:Rock, :Spock],
                 :Scissors => [:Paper, :Lizard],
                 :Lizard   => [:Spock, :Paper],
                 :Spock    => [:Scissors, :Rock] }
    @player1
    @player2
  end

  def generate_choice
    player2.choose(results.keys.sample)
  end

  def play
    return 'Its a Tie' if player1.choice == player2.choice
    return 'Player 1 Wins' if loses_to(player1.choice).include? player2.choice
    return 'Player 2 Wins'
  end

  def loses_to(choice)
    self.results[choice]
  end

  def add(new_player)
    if player1 != nil
      @player2 = new_player
    else
      @player1 = new_player
    end
  end

end