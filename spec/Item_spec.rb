require 'Item'

describe Item do

  it 'can be given a name' do
    name = "Rock"
    item = Item.new(:rock, name, [:scissors])
    expect(item.name).to eq name
  end

  it 'can report if it beats an item' do
    MOVES_HASH = Game::MOVES_HASH
    rock = MOVES_HASH[:rock]
    expect(rock.can_beat?(:scissors)).to eq true
  end

  it 'can report if it is beaten by a move' do
    MOVES_HASH = Game::MOVES_HASH
    rock = MOVES_HASH[:rock]
    expect(rock.beaten_by?(:paper)).to eq true
  end

end
