class Game

  def self.create(player1, player2 = Player.new("Computer"))
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
  end

  attr_reader :player1, :player2

  def play_1_bot_match(player1_choice)
    @player1.make_choice(player1_choice)
    @player2.make_random_choice
  end

  def winner
    return nil if tie_game?
    return @player1 if player1_beats_player2?(@player1, @player2)
    @player2
  end

  def loser
    other_player(winner)
  end

  def tie_game?
    @player1.choice == @player2.choice
  end

  def get_image(choice)
    case choice
    when "rock"
      return '<i class="result_icon brown_text fas fa-hand-rock"></i>'
    when "paper"
      return '<i class="result_icon white_text fas fa-hand-paper"></i>'
    when "scissors"
      return '<i class="result_icon blue_text fas fa-hand-scissors"></i>'
    when "spock"
      return '<i class="result_icon tan_text fas fa-hand-spock"></i>'
    when "lizard"
      return '<i class="result_icon purple_text fas fa-hand-lizard"></i>'
    end
  end

  def get_result_string(winner_choice, loser_choice)
    case winner_choice
    when "rock"
      if loser_choice == "scissors"
        return "Rock smashes Scissors"
      elsif loser_choice == "lizard"
        return "Rock crushes Lizard"
      end
    when "paper"
      if loser_choice == "rock"
        return "Paper covers Rock"
      elsif loser_choice == "spock"
        return "Paper disproves Spock"
      end
    when "scissors"
      if loser_choice == "paper"
        return "Scissors cuts Paper"
      elsif loser_choice == "lizard"
        return "Scissors decapitates Lizard"
      end
    when "spock"
      if loser_choice == "rock"
        return "Spock vaporizes Rock"
      elsif loser_choice == "scissors"
        return "Spock bends Scissors"
      end
    when "lizard"
      if loser_choice == "paper"
        return "Lizard eats Paper"
      elsif loser_choice == "spock"
        return "Lizard poisons Spock"
      end
    end
  end

  private

  def player1_beats_player2?(player1, player2)
    case player1.choice
    when "rock"
      return true if ["scissors", "lizard"].include? player2.choice
      false
    when "paper"
      return true if ["rock", "spock"].include? player2.choice
      false
    when "scissors"
      return true if ["paper", "lizard"].include? player2.choice
      false
    when "spock"
      return true if ["rock", "scissors"].include? player2.choice
      false
    when "lizard"
      return true if ["paper", "spock"].include? player2.choice
      false
    end
  end

  def other_player(player)
    return @player1 if player == @player2
    return @player2 if player == @player1
  end

end
