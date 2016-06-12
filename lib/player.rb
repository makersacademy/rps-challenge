class Player

OPTIONS = ["Rock","Paper","Scissor","Spock","Lizard"]

attr_reader :name, :option

  def initialize(name,option)
    @name = name
    @option = option
  end

  def pick_play
    @option
  end

end