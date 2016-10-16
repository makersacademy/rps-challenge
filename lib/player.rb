class Player

attr_reader :player_item, :name

def self.create(name)
  @player = Player.new(name)
end

def self.instance
  @player
end

def initialize(name)
  @name = name
  @player_item
end

def select(item)
  @player_item = item
end

end
