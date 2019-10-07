require 'player'

describe Player do
  it 'has a name on initialize' do
    player = Player.new('James')
    expect(player.name).to eq 'James'
  end

  it 'stores a choice that is has been given' do
    player = Player.new('James')
    player.choose('Rock')
    expect(player.choice).to eq 'Rock'
  end

  it 'stores a choice when asked to create a new one' do
    player = Player.new('James')
    allow(player).to receive(:rand).and_return(2)
    player.make_choice
    expect(player.choice).to eq 'Paper'
  end
end
