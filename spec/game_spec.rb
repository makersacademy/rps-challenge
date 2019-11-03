require 'game'

describe Game do
  let(:game) { described_class.new }
  let(:player) { double :player }
  let(:comp) { double :computer }

  it 'decides result' do
    allow(player).to receive(:player_choice).and_return :paper
    allow(comp).to receive(:comp_choice).and_return :paper
    expect(game.result(player, comp)).to eq :draw
  end
end
