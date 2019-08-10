class Player
attr_reader :name, :move, :player_name

  def initialize(name)
    @name = name
    @move = move
    @player_name = nil
  end

  def self.name
    return @player_name
  end

  def self.create(name)
    @player = Player.new(name)
    @player_name = name
  end

  def self.move(move)
    raise 'Not allowed!' unless ['rock','paper','scissors'].include? move.to_s
    @move = move
    return @move
  end

  def self.show_move
    return @move
  end



  def self.instance
    @player
  end

end