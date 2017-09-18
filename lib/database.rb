require_relative 'player.rb'

class PlayerDatabase

  attr_reader :contents, :names

  def initialize(contents = [Player.new])
    @contents = contents
  end

  def list_of_player_names(array = array_of_names)
    return array.to_s if array.nil? or array.length <= 1
    array[0..-2].join(", ") + " and " + array[-1]
  end

  def new_player(entry = 'none', name = nil)
    entry == 'new entry' ? (@contents << Player.new(name)) : (@contents << entry)
    # unless entry == 'none'

  end

private

  def array_of_names
    @names = contents.map { |x| x.name }
  end

end
