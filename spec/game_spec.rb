require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  it 'comes with a set list of weapons' do
    expect(Game::WEAPONS).to eq [:rock, :paper, :scissors]
  end

  it 'has a rules table' do
    expect(Game::RULES).to eq {{ scissors: :paper, paper: :rock, rock: :scissors }}
  end

  context 'rock plays other weapons' do
    before do
      allow(player).to receive(:choose_weapon) { :rock }
      allow(player).to receive(:weapon) { :rock }
    end

    it 'rock beats scissors' do
      allow(computer).to receive(:weapon) { :scissors }
      expect(game.result).to eq :win
    end

    it 'rock loses to paper' do
      allow(computer).to receive(:weapon) { :paper }
      expect(game.result).to eq :lose
    end

    it 'rock draws with rock' do
      allow(computer).to receive(:weapon) { :rock }
      expect(game.result).to eq :draw
    end
  end

end
