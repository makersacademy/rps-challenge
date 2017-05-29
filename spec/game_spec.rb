require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :computer }
  subject(:game) { described_class.new(player_1, player_2) }

  it 'each game should have a Player 1' do
    expect(game.players[0]).to eq player_1
  end

  it 'each game should have a Player 2' do
    expect(game.players[1]).to eq player_2
  end

  describe 'player 1 plays rock' do
    before { allow(player_1).to receive(:weapon) { :rock } }

    it 'player 1 should win if computer plays scissors' do
      allow(player_2).to receive(:weapon) { :scissors }
      expect(game.battle).to eq :won
    end

    it 'player 1 should draw if computer plays rock' do
      allow(player_2).to receive(:weapon) { :rock }
      expect(game.battle).to eq :draw
    end

    it 'player 1 should lose if computer plays paper' do
      allow(player_2).to receive(:weapon) { :paper }
      expect(game.battle).to eq :lose
    end
  end

  describe 'player 1 plays paper' do
    before { allow(player_1).to receive(:weapon) { :paper } }

    it 'player 1 should win if computer plays rock ' do
      allow(player_2).to receive(:weapon) { :rock }
      expect(game.battle).to eq :won
    end

    it 'player 1 should lose if computer plays scissors' do
      allow(player_2).to receive(:weapon) { :scissors }
      expect(game.battle).to eq :lose
    end

    it 'player 1 should draw if computer plays paper' do
      allow(player_2).to receive(:weapon) { :paper }
      expect(game.battle).to eq :draw
    end
  end

  describe 'player 1 plays scissors' do
    before { allow(player_1).to receive(:weapon) { :scissors } }

    it 'player 1 should lose if computer plays rock ' do
      allow(player_2).to receive(:weapon) { :rock }
      expect(game.battle).to eq :lose
    end

    it 'player 1 should draw if computer plays scissors' do
      allow(player_2).to receive(:weapon) { :scissors }
      expect(game.battle).to eq :draw
    end

    it 'player 1 should win if computer plays paper' do
      allow(player_2).to receive(:weapon) { :paper }
      expect(game.battle).to eq :won
    end
  end

end
