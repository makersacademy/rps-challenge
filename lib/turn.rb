class Turn

attr_reader :who, :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @who = name1
  end

  def self.create(name1, name2)
    @turn = Turn.new(name1, name2)
  end

  def self.instance
    @turn
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
