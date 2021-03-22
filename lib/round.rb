class Round < Match

  attr_reader :winner, :bouts, :players

  def initialize(number_of_bouts)
    @players = @@players
    @bouts = []
    number_of_bouts.times { @bouts << Bout.new(@players) }
  end

  def who_won(bouts)
    super(bouts)
  end

end
