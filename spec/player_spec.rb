require 'player'

describe Player do
  let(:player) { described_class.new(name: "Arfah", browser: "Chrome") }
  let(:move) { double :move }

  it 'can have a name' do
    expect(player.name).to eq "Arfah"
  end

  it 'can have a browser' do
    expect(player.browser).to eq "Chrome"
  end

  it 'can be ready' do
    player.choose(:move)
    expect(player.chosen?).to eq true
  end

  it 'can make a choice' do
    expect(player).to receive(:choose).with :move
    player.choose(:move)
    # expect(:choice).to be "Rock"
  end
end
