class RPS

  def initialize(player)
    @game_options = {
      1 => "Rock",
      2 => "Paper",
      3 => "Scissors"
    }

    @players = [player]
    @player = @players.first
    @computer_choice = nil 
  end

  #--- Class methods and variables
  def self.create(player)
    @game = RPS.new(player)
  end

  def self.instance
    @game
  end

  #----

  def player1
    @players.first
  end

  def player2
    @players.last
  end
  
  def play
    @game_options[rand(1..@game_options.size)]
  end

  def get_player_choice
    @players.first.user_choice
  end

  def get_computer_choice
    @computer_choice = play
  end

  def winner
    player1 = get_player_choice
    player2 = @computer_choice
    compute_winner(player1, player2)
  end

  private
  def compute_winner(player1,player2)
    result = nil
    if player1 == player2
      result = "Draw"
    elsif player1 == "Rock" && player2 == "Scissors"
      result = @player.name
    elsif player1 == "Scissors" && player2 == "Paper"
      result = @player.name
    elsif player1 == "Paper" && player2 == "Rock"
      result = @player.name
    else
      result = 'Computer'
    end
    
    result
  end

end

