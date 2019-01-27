require_relative 'player'

class Round

  def self.create(player, computer = Player.new("Computer"))
    @round = Round.new(player, computer)
  end

  def self.this_round
    @round
  end

  attr_reader :players, :current_turn, :winner

  def initialize(player, computer)
    @players = [player, computer]
    @current_turn = player
    @winner = []
  end

  def store_and_switch(move)
    store_move(move)
    switch_turn
  end

  def computer_move
    random_move
    switch_turn
  end

  def opponent
    @players.reject { |player| player == @current_turn }.first
  end

  def run_outcome
    calculate_outcome
    record_outcome
  end

  def complete?
    @current_turn == @players.first ? true : false
  end

  private

  def switch_turn
    @current_turn = opponent
  end

  def random_move
    move = generate_random
    store_move(move)
  end

  def generate_random
    options = ["scissors", "rock", "paper"]
    options[rand(0..2)]
  end

  def store_move(move)
    @current_turn.store_move(move)
  end

  def calculate_outcome
    p1_move = @current_turn.moves.last
    p2_move = opponent.moves.last
    if p1_move == p2_move
      @winner << "Draw"
    elsif (p1_move == "rock" && p2_move == "scissors" ||
      p1_move == "scissors" && p2_move == "paper" ||
      p1_move == "paper" && p2_move == "rock")
      @winner << @current_turn
    else
      @winner << opponent
    end
  end

  def record_outcome
    @players.each do |player|
      case @winner.last
      when player
        player.add_outcome("won", self)
      when "Draw"
        player.add_outcome("draw", self)
      else
        player.add_outcome("lost", self)
      end
    end
  end
end
