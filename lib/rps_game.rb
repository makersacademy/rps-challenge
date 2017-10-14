class RpsGame
  attr_reader :players, :choices

  def initialize(player1, player2)
    @players = [player1, player2]
    @choices = {:rock => [:scissors], :scissors => [:paper], :paper => [:rock]}
    @rounds = 0
  end

  def self.create_game(player1, player2)
    @current_game = RpsGame.new(player1, player2)
  end

  def self.current_game
    @current_game
  end

  def player1_chooses(action)
    player1.chooses(action)
  end

  def player2_chooses(action)
    player2.chooses(action)
  end

  def decide_winner
    increase_round_counter
    return set_round_results(player1, player2) if player1_wins?
    return set_round_results(player2, player1) if player2_wins?
    return set_round_results
  end
  
  def end_turn
    @players.reverse!
  end

  def display_final_results
    "#{player1.name}: #{player1.win_counts} wins <br> #{player2.name}: #{player2.win_counts} wins"
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  private
  def increase_round_counter
    @rounds += 1
  end

  def player1_choise 
    players.first.turn_choice
  end

  def player2_choise
    players.last.turn_choice
  end

  def player1_wins?
    choices[player1_choise].include?(player2_choise)
  end

  def player2_wins?
    choices[player2_choise].include?(player1_choise) 
  end

  def set_round_results(winner = nil, looser = nil)
    return "It's a DRAW..." if winner == nil
    winner.wins
    "#{winner.name} with #{winner.turn_choice} won #{looser.name} with #{looser.turn_choice}"
  end


end