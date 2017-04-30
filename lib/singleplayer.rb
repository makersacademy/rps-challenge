class SinglePlayer

  def self.create_game
    @game = SinglePlayer.new
  end

  def self.instance
    @game
  end

end
