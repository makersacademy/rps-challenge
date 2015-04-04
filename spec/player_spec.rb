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

  # it 'can choose a move' do
  #   allow(move).to receive(:choice)
  #   expect(player.choose("Rock")).to eq "Rock"
  # end
end
