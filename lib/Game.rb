require_relative 'Item'

class Game

  attr_reader :player_1, :player_2, :current_player, :best_of, :moves_hash

  RPS_HASH = {
    rock: Item.new(:rock, "Rock", [:scissors]),
    paper: Item.new(:paper, "Paper", [:rock]),
    scissors: Item.new(:scissors, "Scissors", [:paper])
  }

  LIZARD_SPOCK_HASH = {
    rock: Item.new(:rock, "Rock", [:lizard, :scissors]),
    lizard: Item.new(:lizard, "Lizard", [:spock, :paper]),
    spock: Item.new(:spock, "Spock", [:scissors, :rock]),
    scissors: Item.new(:scissors, "Scissors", [:paper, :lizard]),
    paper: Item.new(:paper, "Paper", [:rock, :spock])
  }

  FRIENDS_HASH = {
    rock: Item.new(:rock, "Rock", [:scissors]),
    paper: Item.new(:paper, "Paper", [:rock]),
    scissors: Item.new(:scissors, "Scissors", [:paper]),
    fire: Item.new(:fire, "Fire", [:rock, :paper, :scissors]),
    water: Item.new(:water, "Water balloon", [:fire])
  }

  def initialize(player_1, player_2, game_type = "rps", best_of = "3")
    @player_1 = player_1
    @player_2 = player_2
    @best_of = best_of.to_i
    @moves_hash = case game_type
                  when "rps"
                    RPS_HASH
                  when "lizardspock"
                    LIZARD_SPOCK_HASH
                  when "friends"
                    FRIENDS_HASH
                  end
    @current_player = @player_1
    @round_over = false
    @game_over = false
  end

  def winner(player_1 = @player_1, player_2 = @player_2)
    @player_1_item = @moves_hash[player_1.move]
    @player_2_item = @moves_hash[player_2.move]
    p @player_1_item
    p @player_2_item
    return @player_1 if @player_1_item.can_beat?(@player_2_item.symbol)
    return @player_2 if @player_2_item.can_beat?(@player_1_item.symbol)
    :draw
  end

  def increase_winner_score
    return if winner == :draw
    winner.increase_score
  end

  def change_player
    if @current_player == @player_1
      @current_player = @player_2
      @round_over = false
    else
      @current_player = @player_1
      @round_over = true
    end
  end

  def round_over?
    @round_over
  end

  def game_over?
    puts "p1 score = #{@player_1.score}"
    puts "p2 score = #{@player_2.score}"
    puts "best of = #{@best_of}"
    puts "best of / 2 = #{@best_of / 2.0}"
    [@player_1.score, @player_2.score].max >= @best_of / 2.0
  end

  def possible_moves
    moves_hash.map { |key, _value| key }
  end

end
