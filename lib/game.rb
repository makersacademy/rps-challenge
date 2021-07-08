require './lib/computer'

class Game

  attr_reader :p1, :p2

  def initialize (player_1, player_2)
    @p1 = player_1
    @p2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def self.result(name, move)
        @p1 = [name, move]
        @cp = ["Computer", Computer.go]
        @winnning_hash = {
          'Scissors' => 'Paper',
          'Rock' => 'Scissors',
          'Paper' => 'Rock'
          }
        if @p1[1] == @cp[1]
          return "Draw!"
        else
          if @winnning_hash[@p1[1]] == @cp[1]
            return "#{@p1[0]} wins!"
          else
            return "#{@p1[0]} loses!"
          end
        end
    end

end
