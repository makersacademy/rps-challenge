require 'game'

describe Game do
  let(:computer) { double :computer }
  let(:game) { described_class.new(computer) }

  it 'returns player choice of weapon' do
    expect(game.player_choice("paper")).to eq :paper
  end

  it 'raises error if player selects weapon that is not rock, paper or scissors' do
    expect { game.player_choice("sword") }.to raise_error "Please select again"
  end

  it 'decides result' do
    allow(computer).to receive(:weapon).and_return(:paper)
    game.player_choice("paper")
    expect(game.result).to eq :draw
  end
end
