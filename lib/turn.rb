class Turn

attr_reader :who

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @who = name1
  end

  def move
    switch_player
  end

  private

  def switch_player
    if @who == @name1
      @who = @name2
    else
      @who = @name1
    end
  end
end
