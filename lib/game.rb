class Game
attr_reader :human_selection, :name

def self.create(name)
  @game = Game.new(name)
end

def self.instance
  @game
end

def initialize(name)
    @name = name
  end

  def human_select(option)
   @human_selection = option
  end
end
