require_relative 'weapon'
require_relative 'score_calculator'


class Game

  attr_accessor :name, :gamers
  @@existing_games=[]

  def initialize
    @gamers = []
    @name
  end

  def register session_id
    gamers << session_id
    session_id
  end

  def self.existing_games_getter
    @@existing_games
  end

  def self.existing_games_setter game
    @@existing_games << game
  end

end