require 'game'

describe Game do
  let(:game) { described_class.new }

  context 'adding players' do

    it 'can add a player' do
      expect(game.add_player1("Sammy")).to eq ["Sammy"]
    end

    it 'can add a second player' do
      expect(game.add_player2("Opponent")).to eq ["Opponent"]
    end

  end

  context 'Winning game' do

    it 'results in a win when p1 selects rock and p2 selects scissors' do
      expect(game.result(:rock, :scissors)).to eq 'Win!'
    end

    it 'results in a win when player1 selects paper and p2 selects rock' do
      expect(game.result(:paper, :rock)).to eq 'Win!'
    end

    it 'results in a win when player1 selects scissors and p2 selects paper' do
      expect(game.result(:scissors, :paper)).to eq 'Win!'
    end

  end

  context 'Losing game' do

    it 'results in a loss when p1 selects scissors and p2 selects rock' do
      expect(game.result(:scissors, :rock)).to eq 'Lost!'
    end

    it 'results in a loss when p1 selects rock and p2 selects paper' do
      expect(game.result(:rock, :paper)).to eq 'Lost!'
    end

    it 'results in a loss when p1 selects paper and p2 selects scissors' do
      expect(game.result(:paper, :scissors)).to eq 'Lost!'
    end

  end

  context 'Draw game' do

    it 'results in a draw when p1 and p2 both select scissors' do
      expect(game.result(:scissors, :scissors)).to eq 'Draw!'
    end

    it 'results in a draw when p1 and p2 both select rock' do
      expect(game.result(:rock, :rock)).to eq 'Draw!'
    end

    it 'results in a draw when p1 and p2 both select paper' do
      expect(game.result(:paper, :paper)).to eq 'Draw!'
    end

  end
end