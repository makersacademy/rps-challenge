class Player

attr_reader :name1, :computer

  def initialize
    @name1 = name1
    @computer = computer
  end

  def choose
    @play_options = play_options

  def CPU_choose
    Game::PLAY_OPTIONS.sample
  end

end
