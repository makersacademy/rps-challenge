class GameLogic
  attr_reader :menu
  def intialize
    @menu = []
  end

  def load(filename = './lib/RPSscores.json')
    @data = JSON.parse(File.read(filename))
    @menu = @data["RPS"]
  end

  def find_the_hash(play1, play2)
    @menu.each do |hash|
      play1 == hash[play1] && play2 == hash[play2] 
    end
  end
end
