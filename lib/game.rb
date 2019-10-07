class Game

attr_reader :player_name, :player_choice, :options, :game_choice

OPTIONS = ["rock", "paper", "scissors"]

  def initialize(player_name = 'name', player_choice)
    @player_name = player_name
    @player_choice = player_choice
    @options = OPTIONS
    @game_choice = random_move
  end

  def random_move
    @options.sample
  end

  def judge
    if self.player_choice == self.game_choice
      "We draw!"
    elsif self.player_choice == "rock"
      if self.game_choice == "scissors"
        "You win!"
      else
        "I win!"
      end
    elsif self.player_choice == "paper"
      if self.game_choice == "rock"
        "You win!"
      else
        puts "I win!"
      end
    elsif self.player_choice == "scissors"
      if self.game_choice == "paper"
        "You win!"
      else
        "I win!"
      end
    end
  end

  def result_message
    "#{@player_name} chose #{@player_choice}.
    I chose #{@game_choice}.
    #{self.judge}"
  end

end
