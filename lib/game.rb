class Game
  attr_reader :registeredplayer1, :registeredplayer2, :win_results

  def initialize(registeredplayer1, registeredplayer2)
    @registeredplayer1 = registeredplayer1
    @registeredplayer2 = registeredplayer2
  end

  def self.create_players(registeredplayer1, registeredplayer2)
    @game = Game.new(registeredplayer1, registeredplayer2)
  end

  def self.instance
    @game
  end

  def result
    @win_results = { 'Rock' => 'Scissors', 'Paper' => 'Rock', 'Scissors' => 'Paper'}
    if registeredplayer1.tool == registeredplayer2.tool
      "It's a draw this time #{registeredplayer1.name} & #{registeredplayer2.name} - it seems you're just as good as each other. Great mind think alike!!"
    else
      if (win_results[registeredplayer1.tool] == registeredplayer2.tool) == true
        "Congratulations #{registeredplayer1.name} - you won and should be proud of how amazing you are! I'm sorry #{registeredplayer2.name} - you lost this time, but never give up!"
      else
        "Congratulations #{registeredplayer2.name} - you won and should be proud of how amazing you are! I'm sorry #{registeredplayer1.name} - you lost this time, but never give up!"
      end
    end
  end

end