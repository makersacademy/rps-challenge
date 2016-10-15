class Game

  attr_reader :played_games, :player_1_score, :player_2_score

  def initialize(player_1, player_2 = :The_Computer)
    @players = [player_1, player_2]
    @player_1_score = 0
    @player_2_score = 0
    @played_games = 0
  end

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def player_1_move(move)
    game_played
    if move == :rock
      player_1_rock(player_2_move)
    elsif move == :paper
      player_1_paper(player_2_move)
    else
      player_1_scissors(player_2_move)
    end
  end

  def player_2_move
    [:rock, :paper, :scissors].sample
  end

  def player_1_rock(player_2_move)
    if player_2_move == :rock
      "Both picked rock - DRAW"
    elsif player_2_move == :paper
      player_2_won
      "#{player_2.name} has won - PAPER beats ROCK"
    else
      player_1_won
      "#{player_1.name} has won - ROCK beats SCISSORS"
    end
  end

  def player_1_paper(player_2_move)
    if player_2_move == :paper
      "Both picked paper - DRAW"
    elsif player_2_move == :scissors
      player_2_won
      "#{player_2.name} has won - SCISSORS beats PAPER"
    else
      player_1_won
      "#{player_1.name} has won - PAPER beats ROCK"
    end
  end

  def player_1_scissors(player_2_move)
    if player_2_move == :scissors
      "Both picked scissors - DRAW"
    elsif player_2_move == :rock
      player_2_won
      "#{player_2.name} has won - ROCK beats SCISSORS"
    else
      player_1_won
      "#{player_1.name} has won - SCISSORS beats PAPER"
    end
  end

  def game_played
    @played_games += 1
  end

  def player_1_won
    @player_1_score += 1
  end

  def player_2_won
    @player_2_score += 1
  end

  def reset_score
    @player_1_score = 0
    @player_2_score = 0
    @played_games = 0
  end

end
