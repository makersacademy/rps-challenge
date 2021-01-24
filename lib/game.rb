class Game

  attr_reader :player_name, :opposition_choice
  attr_accessor :choice

  def initialize(player_name)
    @player_name = player_name
    @choice = nil
    @opposition_choice = nil
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def choose_opponents_choice
    @opposition_choice = random_choice
  end

  def calculate_outcome
    if choice == opposition_choice 
      "Draw"
    else
      case choice
      when "rock"
        case opposition_choice
        when "paper"
          "Lose"
        when "scissors"
          "Win"
        end
      when "paper"
        case opposition_choice
        when "rock"
          "Win"
        when "scissors"
          "Lose"
        end
      when "scissors"
        case opposition_choice
        when "paper"
          "Win"
        when "rock"
          "Lose"
        end
      end
    end
  end
    

  private

  def random_choice
    ["rock", "paper", "scissors"].sample
  end

end
