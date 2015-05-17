class Game

  GOAL = 1

  attr_accessor :rules
  attr_accessor :player_1
  attr_accessor :player_2
  attr_accessor :goal

  def initialize playerClass, goal = GOAL
    @player_1 = initialize_player playerClass, "Player 1"
    @player_2 = initialize_player playerClass, "The computer"
    @rules = 'rps'
    @goal = goal
    @rounds_played = 0
  end

  def initialize_player playerClass, name
    player = playerClass.new name
  end

  def result p1_choice, p2_choice
    if p1_choice == p2_choice
      'draw'
    elsif (p1_choice == 'lizard' && (p2_choice == 'paper' || p2_choice == 'Spock')) ||
          (p1_choice == 'paper' && (p2_choice == 'rock' || p2_choice == 'Spock')) ||
          (p1_choice == 'rock' && (p2_choice == 'lizard' || p2_choice == 'scissors')) ||
          (p1_choice == 'scissors' && (p2_choice == 'lizard' || p2_choice == 'paper')) ||
          (p1_choice == 'Spock' && (p2_choice == 'rock' || p2_choice == 'scissors'))
      self.player_1.add_win
      self.player_1
    else
      self.player_2.add_win
      self.player_2
    end
  end

  def reason p1_choice, p2_choice
    key = []
    combs = { 'lizard-paper': 'Lizard eats paper',
              'lizard-rock': 'Rock crushes lizard',
              'lizard-scissors': 'Scissors decapitates lizard',
              'lizard-spock': 'Lizard poisons Spock',
              'paper-rock': 'Paper covers rock',
              'paper-scissors': 'Scissors cut paper',
              'paper-spock': 'Paper disproves Spock',
              'rock-scissors': 'Rock crushes scissors',
              'rock-spock': 'Spock vaporizes rock',
              'scissors-spock': 'Spock smashes scissors' }
    key << p1_choice.downcase << p2_choice.downcase
    combs[key.sort.join('-').to_sym]
  end

  def won?
    self.player_1.wins == self.goal || self.player_2.wins == self.goal
  end

  def winner
    if self.player_1.wins == self.goal
      self.player_1
    elsif self.player_2.wins == self.goal
      self.player_2
    end
  end

end