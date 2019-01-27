require './lib/computer'

class Game

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
