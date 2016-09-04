
class Ai
  attr_reader :name, :rock_value, :paper_value, :scissors_value
  BASE_NUMBER = 50 #helps to normalise results towards one third each

#the random number initialization is supposed to simulate an individual's
#predalications to picking one move over another
  def initialize(rock_value = rand(0..50) + BASE_NUMBER,
                paper_value = rand(0..50) + BASE_NUMBER,
                scissors_value = rand(0..50) + BASE_NUMBER)
    @rock_value = rock_value
    @paper_value = paper_value
    @scissors_value = scissors_value
    @name = "unknown"
  end

  def pick_move
    rock_score = rand(0.0...100.0) * @rock_value
    paper_score = rand(0.0...100.0) * @paper_value
    scissors_score = rand(0.0...100.0) * @scissors_value

    if rock_score >= paper_score && rock_score >= scissors_score
      1
    elsif paper_score >= rock_score && paper_score >= scissors_score
      2
    elsif scissors_score >= rock_score && scissors_score >= paper_score
      3
    else
      raise_error "Random number stuff not working!!!"
    end
  end

  def set_name(name)
    @name = name
  end

  def self.create(x,y,z)
    @opponent = Ai.new(x,y,z)
  end

  def self.instance
    @opponent
  end
end
