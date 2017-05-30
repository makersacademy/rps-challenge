require_relative 'player'
require 'csv'
# include 'rules'

class Game

  attr_reader :player, :opponent
  attr_accessor :result

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
    @result = nil
  end

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def rps
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def write(path)
    CSV.open(path, 'wb') do |csv|
      csv << [player.name, opponent.name, player.score, opponent.score]
    end
  end

  def self.read(path)
    CSV.foreach(path) do |row|
      create(Player.new(row[0], row[2].to_i), Player.new(row[1], row[3].to_i))
    end
  end

  def compete(player, opponent)
    if player == 'Rock'
      rock_results(player, opponent)
    elsif player == 'Paper'
      paper_results(player, opponent)
    else
      scissors_results(player, opponent)
    end
  end

  private

  def rock_results(player, opponent)
    if opponent == 'Rock'
      draw
    elsif opponent == 'Scissors'
      win(player, opponent)
    else
      lose(player, opponent)
    end
  end

  def paper_results(player, opponent)
    if opponent == 'Paper'
      draw
    elsif opponent == 'Rock'
      win(player, opponent)
    else
      lose(player, opponent)
    end
  end

  def scissors_results(player, opponent)
    if opponent == 'Scissors'
      draw
    elsif opponent == 'Paper'
      win(player, opponent)
    else
      lose(player, opponent)
    end
  end

  def draw
    'A draw!'
  end

  def win(win, lose)
    player.score += 1
    "You win! #{win} beats #{lose}!"
  end

  def lose(lose, win)
    opponent.score += 1
    "You lose! #{win} beats #{lose}!"
  end

end
