class Mode
  attr_reader :game_mode
  
  def initialize(mode)
    @game_mode = mode
  end

  def self.init(mode)
    @mode = Mode.new(mode)
  end

  def self.instance
    @mode 
  end
end