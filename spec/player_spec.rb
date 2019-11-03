require 'player'

describe Player do
let(:player) { described_class.new("Jordan") }
let(:game) { double :Game::WEAPONS }

  it 'returns player name' do
    expect(player.name).to eq "Jordan"
  end

  it 'returns player choice of weapon' do
    expect(player.choose_weapon("paper")).to eq :paper
  end

  it 'raises error if player selects weapon that is not rock, paper or scissors' do
    expect { player.choose_weapon("sword") }.to raise_error "Please select again"
  end
end
