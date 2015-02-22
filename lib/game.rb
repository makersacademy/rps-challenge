class Game

  attr_accessor :results, :choice

  def initialize
    @results = { :Rock     => [:Scissors, :Lizard],
                 :Paper    => [:Rock, :Spock],
                 :Scissors => [:Paper, :Lizard],
                 :Lizard   => [:Spock, :Paper],
                 :Spock    => [:Scissors, :Rock] }
    @choice
  end

  def generate_choice
    @choice = results.keys.sample
  end

  def play_with(player)
    return 'Ties With' if self.choice == player.choice
    return 'Defeats' if loses_to(player.choice).include? self.choice
    return 'Loses To'
  end

  def loses_to(choice)
    self.results[choice]
  end

end