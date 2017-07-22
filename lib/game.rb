class Game
attr_reader :human_selection, :name, :description

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def printer
    # if @rock = "Rock"
    #   p @rock
    # elsif @scissors = "Scissors"
    #   p @scissors
    # else
    #   p @paper
    # end
  end

  def initialize(name)
    @name = name
  end

  def human_select(option)
   @human_selection = option
   p option
   fancy_description
  end

  def fancy_description
    if @human_selection == "Rock"
      @description = "The Almighty"
    elsif @human_selection == "Paper"
      @description = "The Dreaded"
    else
      @description = "The Crafty"
    end
  end
end
