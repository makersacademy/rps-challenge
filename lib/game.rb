class Game

  attr_accessor :choice, :results

  def initialize
    @choice
    @results = { :Rock     => [:Scissors, :Lizard],
                 :Paper    => [:Rock, :Spock],
                 :Scissors => [:Paper, :Lizard],
                 :Lizard   => [:Spock, :Paper],
                 :Spock    => [:Scissors, :Rock] }
  end

  def generate_choice
    @choice = @results.keys.sample
  end

  def play_with(player)
    return 'Its a Tie' if self.choice == player.choice
    return 'You Win' if loses_to(player.choice).include? self.choice
    return 'You Lose'
  end

  def loses_to(choice)
    results[choice]
  end

end