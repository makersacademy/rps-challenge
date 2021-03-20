class Game
  attr_accessor :player1, :player2
  attr_reader :winner, :opponent, :type, :explanation
  def initialize(player1, opponent, type, player2, player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    type == "normal" ? @rps = ["Rock", "Paper", "Scissors"] : @rps = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
    @opponent = opponent
    @type = type
  end

  def self.new_game(player1, opponent, type, player2 = "Your opponent")
    player1 = "Anonymous" if player1 == ""
    @@this_game = Game.new(player1, opponent, type, player2)
  end

  def self.stored_game
    @@this_game
  end

  def play(choice1, choice2 = @rps.sample)
    @player1.turn = choice1
    @player2.turn = choice2
    winner
  end

  def explanation_code
    if (@player1.turn == "Rock" && @player2.turn == "Paper") || (@player2.turn == "Rock" && @player1.turn == "Paper")
      @explanation_code = "Rock_Paper"
    elsif (@player1.turn == "Rock" && @player2.turn == "Scissors") || (@player2.turn == "Scissors" && @player1.turn == "Rock")
      @explanation_code = "Rock_Scissors"
    elsif (@player1.turn == "Scissors" && @player2.turn == "Paper") || (@player2.turn == "Paper" && @player1.turn == "Scissors")
      @explanation_code = "Paper_Scissors"
    elsif (@player1.turn == "Rock" && @player2.turn == "Spock") || (@player2.turn == "Spock" && @player1.turn == "Rock")
      @explanation_code = "Rock_Spock"
    elsif (@player1.turn == "Rock" && @player2.turn == "Lizard") || (@player2.turn == "Lizard" && @player1.turn == "Rock")
      @explanation_code = "Rock_Lizard"
    elsif (@player1.turn == "Lizard" && @player2.turn == "Spock") || (@player2.turn == "Spock" && @player1.turn == "Lizard")
      @explanation_code = "Lizard_Spock"
    elsif (@player1.turn == "Scissors" && @player2.turn == "Spock") || (@player2.turn == "Spock" && @player1.turn == "Scissors")
      @explanation_code = "Scissors_Spock"
    elsif (@player1.turn == "Paper" && @player2.turn == "Spock") || (@player2.turn == "Spock" && @player1.turn == "Paper")
      @explanation_code = "Paper_Spock"
    elsif (@player1.turn == "Lizard" && @player2.turn == "Paper") || (@player2.turn == "Paper" && @player1.turn == "Lizard")
      @explanation_code = "Lizard_Paper"
    elsif (@player1.turn == "Lizard" && @player2.turn == "Scissors") || (@player2.turn == "Scissors" && @player1.turn == "Lizard")
      @explanation_code = "Lizard_Scissors"
    else
      @explanation_code = "Equal"
    end
    calc_explanation
  end

  def calc_explanation
    case @explanation_code
    when "Rock_Paper" then @explanation = "Paper covers Rock!"
    when "Rock_Scissors" then @explanation = "Rock blunts Scissors!"
    when "Paper_Scissors" then @explanation = "Scissors cut Paper!"
    when "Rock_Spock" then @explanation = "Spock vapourises Rock!"
    when "Rock_Lizard" then @explanation = "Rock crushes Lizard!"
    when "Lizard_Spock" then @explanation = "Lizard poisons Spock!"
    when "Scissors_Spock" then @explanation = "Spock smashes Scissors!"
    when "Paper_Spock" then @explanation = "Paper disproves Spock!"
    when "Lizard_Paper" then @explanation = "Lizard eats Paper!"
    when "Lizard_Scissors" then @explanation = "Scissors cut Lizard's head off!"
    when "Equal" then @explanation = "Great minds think alike!"
    end
    return @explanation
  end

  def winner
    if @player1.turn == "Rock"
      case @player2.turn
      when "Rock" then @winner = "Nobody won - TIE"
      when "Paper" then @winner = @player2.name
      when "Scissors" then @winner = @player1.name
      when "Spock" then @winner = @player2.name
      when "Lizard" then @winner = @player1.name
      end
    elsif @player1.turn == "Paper"
      case @player2.turn
      when "Rock" then @winner = @player1.name
      when "Paper" then @winner = "Nobody won - TIE"
      when "Scissors" then @winner = @player2.name
      when "Spock" then @winner = @player1.name
      when "Lizard" then @winner = @player2.name
      end
    elsif @player1.turn == "Scissors"
      case @player2.turn
      when "Rock" then @winner = @player2.name
      when "Paper" then @winner = @player1.name
      when "Scissors" then @winner = "Nobody won - TIE"
      when "Spock" then @winner = @player2.name
      when "Lizard" then @winner = @player1.name
      end
    elsif @player1.turn == "Spock"
      case @player2.turn
      when "Rock" then @winner = @player1.name
      when "Paper" then @winner = @player2.name
      when "Scissors" then @winner = @player1.name
      when "Spock" then @winner = "Nobody won - TIE"
      when "Lizard" then @winner = @player2.name
      end
    elsif @player1.turn == "Lizard"
      case @player2.turn
      when "Rock" then @winner = @player2.name
      when "Paper" then @winner = @player1.name
      when "Scissors" then @winner = @player2.name
      when "Spock" then @winner = @player1.name
      when "Lizard" then @winner = "Nobody won - TIE"
      end
    end
    explanation_code
    return @winner
  end
end
