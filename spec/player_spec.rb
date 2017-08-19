require 'player'

describe Player do

  it 'works' do
    expect(subject.class).to eq described_class
  end

  it 'stores player names' do
    player = Player.new('Stephen')
    expect(player.name).to eq 'Stephen'
  end

end
