require 'player'

describe Player do

  it 'works' do
    expect(subject.class).to eq described_class
  end

  it 'stores player names' do
    player = Player.new('Stephen')
    expect(player.name).to eq 'Stephen'
  end

  it 'stores player scores' do
    player = Player.new('Stephen')
    expect(player.score).to eq 0
  end

  it 'increases player scores' do
    player = Player.new('Stephen')
    player.point
    expect(player.score).to eq 1
  end

end
