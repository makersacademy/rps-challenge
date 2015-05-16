class Game

  GOAL = 1

  def initialize(playerClass, goal = GOAL)
    @player_1 = initialize_player(playerClass, "Player 1")
    @player_2 = initialize_player(playerClass, "The computer")
    @goal = goal
    @rounds_played = 0
  end

  def initialize_player(playerClass, name)
    player = playerClass.new name
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def goal
    @goal
  end

  def set_goal(n)
    @goal = n
  end

  def result(p1_choice, p2_choice)
    if (p1_choice == p2_choice)
      'draw'
    elsif (p1_choice == 'paper' && p2_choice == 'rock') ||
          (p1_choice == 'rock' && p2_choice == 'scissors') ||
          (p1_choice == 'scissors' && p2_choice == 'paper')
      self.player_1.add_win
      self.player_1
    else
      self.player_2.add_win
      self.player_2
    end
  end

  def winner
    if self.player_1.wins == self.goal
      self.player_1
    elsif self.player_2.wins == self.goal
      self.player_2
    end
  end

end