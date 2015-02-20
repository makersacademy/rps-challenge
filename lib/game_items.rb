class GameItems

  attr_reader :items

  def initialize(options)
    @items = {}
    @items[:rock] = "rock"
    @items[:paper] = "paper"
    @items[:scissors] = "scissors"
  end


end